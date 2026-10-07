.class public Lcom/android/settings/datausage/DataSaverSummary;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataSaverSummary.java"

# interfaces
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitching:Z

.field private mUnrestrictedAccess:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 121
    const v0, 0x7f1206bf

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 116
    const/16 v0, 0x15c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 71
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar(Ljava/lang/String;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 72
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v2, 0x7f12045f

    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/SwitchBar;->setTextTitleById(II)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120460

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/SwitchBar;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 77
    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    .line 190
    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f150033

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataSaverSummary;->addPreferencesFromResource(I)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    .line 58
    const v1, 0x104017d

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 59
    const-string v0, "unrestricted_access"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataSaverSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroid/support/v7/preference/Preference;

    .line 60
    nop

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 60
    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 62
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 63
    new-instance v0, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    .line 64
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 65
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1
    .param p1, "isDataSaving"    # Z

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->hide(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 9

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 146
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 147
    .local v1, "allApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 148
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "count":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 149
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 150
    .local v5, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    sget-object v6, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    invoke-virtual {v6, v5}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 151
    goto :goto_1

    .line 153
    :cond_1
    iget-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v6, v6, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    if-eqz v6, :cond_2

    .line 155
    add-int/lit8 v4, v4, 0x1

    .line 148
    .end local v5
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0
    :cond_3
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100010

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 158
    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 195
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 200
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 180
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 170
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 185
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->pause()V

    .line 101
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->refreshWhitelist()V

    .line 91
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->refreshBlacklist()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->resume()V

    .line 94
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .line 165
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    if-eqz v0, :cond_0

    .line 107
    monitor-exit p0

    return-void

    .line 109
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitching:Z

    .line 110
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p2}, Lcom/android/settings/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V

    .line 111
    monitor-exit p0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .line 134
    return-void
.end method
