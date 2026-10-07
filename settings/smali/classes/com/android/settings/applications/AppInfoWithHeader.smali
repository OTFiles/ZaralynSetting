.class public abstract Lcom/android/settings/applications/AppInfoWithHeader;
.super Lcom/android/settings/applications/AppInfoBase;
.source "AppInfoWithHeader.java"


# instance fields
.field private mCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mCreated:Z

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/android/settings/applications/AppInfoWithHeader;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mCreated:Z

    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 44
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 45
    invoke-static {v0, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 48
    invoke-virtual {v2, v3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPm:Landroid/content/pm/PackageManager;

    .line 49
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 50
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Landroid/content/pm/PackageInfo;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 51
    invoke-static {v2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageName:Ljava/lang/String;

    .line 52
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoWithHeader;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 53
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 54
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    move-result-object v1

    .line 57
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 58
    return-void
.end method
