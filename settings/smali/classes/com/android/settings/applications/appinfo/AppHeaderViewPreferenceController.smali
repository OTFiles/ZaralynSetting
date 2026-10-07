.class public Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppHeaderViewPreferenceController.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# static fields
.field private static final KEY_HEADER:Ljava/lang/String; = "header_view"


# instance fields
.field private mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private mHeader:Lcom/android/settings/applications/LayoutPreference;

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private final mPackageName:Ljava/lang/String;

.field private final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 51
    const-string v0, "header_view"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 53
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mPackageName:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 55
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 58
    :cond_0
    return-void
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 13
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 96
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    .line 97
    .local v1, "isInstantApp":Z
    const/4 v2, 0x0

    .line 98
    .local v2, "statusId":I
    const/4 v3, 0x0

    .line 99
    .local v3, "summary":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 100
    iget-object v5, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/android/settings/Utils;->getInstallationStatus(Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    .line 101
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    const v5, 0x7f12071a

    if-ne v2, v5, :cond_0

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 103
    const-string v5, "%s  %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f120fda

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    .line 104
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v11

    iget-object v12, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 103
    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 108
    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 109
    invoke-virtual {v5, p2}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v5

    .line 110
    invoke-virtual {v5, p2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v5

    .line 111
    invoke-virtual {v5, v3}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v5

    .line 112
    invoke-virtual {v5, v1}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v5

    .line 113
    invoke-virtual {v5, v0, v4}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 114
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 68
    const-string v0, "header_view"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 70
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    .line 71
    const v3, 0x7f0a0169

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mPackageName:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 73
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/android/settings/widget/EntityHeaderController;->bindHeaderButtons()Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 76
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 81
    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 82
    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    .line 83
    return-void
.end method

.method public refreshUi(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 87
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/LayoutPreference;->setEnabled(Z)V

    .line 91
    :cond_0
    return-void
.end method
