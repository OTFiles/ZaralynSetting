.class public Lcom/android/settings/enterprise/ApplicationListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ApplicationListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;
    }
.end annotation


# instance fields
.field private mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;Landroid/content/pm/PackageManager;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;
    .param p3, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p4, "parent"    # Lcom/android/settings/SettingsPreferenceFragment;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p3, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 47
    iput-object p4, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 48
    invoke-interface {p2, p1, p0}, Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;->buildApplicationList(Landroid/content/Context;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public onListOfAppsResult(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/UserAppInfo;>;"
    iget-object v0, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 64
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    if-nez v0, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v1

    .line 68
    .local v1, "iconDrawableFactory":Landroid/util/IconDrawableFactory;
    iget-object v2, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 69
    .local v2, "prefContext":Landroid/content/Context;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "position":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 70
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/UserAppInfo;

    .line 71
    .local v5, "item":Lcom/android/settings/applications/UserAppInfo;
    new-instance v6, Lcom/android/settings/widget/AppPreference;

    invoke-direct {v6, v2}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 72
    .local v6, "preference":Landroid/support/v7/preference/Preference;
    iget-object v7, v5, Lcom/android/settings/applications/UserAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v7, v5, Lcom/android/settings/applications/UserAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v7}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v6, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 75
    invoke-virtual {v6, v3}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 76
    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 69
    .end local v5
    .end local v6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    .end local v4
    :cond_1
    return-void
.end method
