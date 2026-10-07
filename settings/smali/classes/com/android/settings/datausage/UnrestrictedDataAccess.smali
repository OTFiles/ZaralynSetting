.class public Lcom/android/settings/datausage/UnrestrictedDataAccess;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
    }
.end annotation


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

.field private mExtraLoaded:Z

.field private mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mShowSystem:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/UnrestrictedDataAccess;

    .line 48
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/DataSaverBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/UnrestrictedDataAccess;

    .line 48
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-object v0
.end method

.method private rebuild()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 144
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onRebuildComplete(Ljava/util/ArrayList;)V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 139
    const v0, 0x7f1206dc

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 215
    const/16 v0, 0x15d

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 220
    const v0, 0x7f1500b4

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 4
    .param p1, "whitelisted"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 239
    if-eqz p1, :cond_0

    const/16 v0, 0x30d

    goto :goto_0

    .line 240
    :cond_0
    const/16 v0, 0x30e

    .line 241
    .local v0, "logCategory":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 243
    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    .line 201
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setAnimationAllowed(Z)V

    .line 67
    nop

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 67
    invoke-static {v1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 69
    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 70
    new-instance v1, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    .line 71
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 72
    if-eqz p1, :cond_0

    const-string v1, "show_system"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    .line 73
    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    goto :goto_1

    .line 74
    :cond_1
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    :goto_1
    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setHasOptionsMenu(Z)V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 80
    nop

    .line 81
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1208c2

    goto :goto_0

    :cond_0
    const v0, 0x7f1208cc

    .line 80
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x2b

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 82
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->release()V

    .line 129
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    .line 134
    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->rebuild()V

    .line 135
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 206
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 211
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1208c2

    goto :goto_0

    :cond_1
    const v0, 0x7f1208cc

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 91
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    goto :goto_1

    .line 92
    :cond_2
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    :goto_1
    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    .line 93
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    if-eqz v0, :cond_3

    .line 94
    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->rebuild()V

    .line 98
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 191
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 157
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 196
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->pause()V

    .line 123
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 225
    instance-of v0, p1, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 226
    move-object v0, p1

    check-cast v0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    .line 227
    .local v0, "accessPreference":Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-ne p2, v2, :cond_0

    move v1, v3

    nop

    .line 228
    .local v1, "whitelisted":Z
    :cond_0
    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$000(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$000(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 230
    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$000(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 229
    invoke-virtual {v2, v4, v5, v1}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    .line 231
    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$100(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object v2

    iput-boolean v1, v2, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    .line 232
    return v3

    .line 234
    .end local v0
    .end local v1
    :cond_1
    return v1
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 163
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 164
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 165
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 166
    .local v3, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
    goto :goto_2

    .line 169
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    .line 171
    .local v5, "preference":Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
    if-nez v5, :cond_2

    .line 172
    new-instance v6, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, p0, v7, v3}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    move-object v5, v6

    .line 173
    invoke-virtual {v5, v4}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setKey(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v5, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 178
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 177
    invoke-static {v6, v7, v8}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 179
    invoke-virtual {v5}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    .line 182
    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOrder(I)V

    .line 164
    .end local v3
    .end local v4
    .end local v5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v2
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 186
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->resume()V

    .line 117
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .line 152
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    const-string v0, "show_system"

    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 109
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    .line 111
    return-void
.end method

.method shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 247
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
