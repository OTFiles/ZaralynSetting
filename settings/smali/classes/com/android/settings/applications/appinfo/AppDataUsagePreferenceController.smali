.class public Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppDataUsagePreferenceController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/net/ChartData;",
        ">;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/events/OnPause;",
        "Lcom/android/settingslib/core/lifecycle/events/OnResume;"
    }
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private mStatsSession:Landroid/net/INetworkStatsSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mBundle:Landroid/os/Bundle;

    .line 57
    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 58
    return-void
.end method

.method private getDataSummary()Ljava/lang/CharSequence;
    .locals 10

    .line 136
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v0, v0, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v0, v0, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 138
    .local v3, "totalBytes":J
    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12093e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120462

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    .line 142
    invoke-static {v6, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v7, v7, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    .line 143
    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v7

    const v9, 0x10010

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    .end local v3
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1203c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummaryEnable()Z
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mChartData:Lcom/android/settingslib/net/ChartData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v0, v0, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v0, v0, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 153
    .local v4, "totalBytes":J
    :goto_0
    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 154
    return v1

    .line 156
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 158
    .end local v4
    :cond_2
    return v1
.end method

.method private static getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 163
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageList;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    .line 169
    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "netstats"

    .line 70
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    .line 72
    .local v0, "statsService":Landroid/net/INetworkStatsService;
    :try_start_0
    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 75
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 77
    .end local v0
    .end local v1
    :cond_0
    :goto_0
    return-void
.end method

.method protected getArguments()Landroid/os/Bundle;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->isBandwidthControlEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected getDetailFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 127
    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    return-object v0
.end method

.method isBandwidthControlEnabled()Z
    .locals 1

    .line 174
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v0

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/android/settingslib/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settingslib/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/net/ChartData;)V
    .locals 1
    .param p2, "data"    # Lcom/android/settingslib/net/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;",
            "Lcom/android/settingslib/net/ChartData;",
            ")V"
        }
    .end annotation

    .line 116
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settingslib/net/ChartData;>;"
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mChartData:Lcom/android/settingslib/net/ChartData;

    .line 117
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 118
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p2, Lcom/android/settingslib/net/ChartData;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settingslib/net/ChartData;>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 91
    .local v0, "uid":I
    new-instance v1, Lcom/android/settingslib/AppItem;

    invoke-direct {v1, v0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 92
    .local v1, "app":Lcom/android/settingslib/AppItem;
    invoke-virtual {v1, v0}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 93
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 94
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mBundle:Landroid/os/Bundle;

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mBundle:Landroid/os/Bundle;

    const-string v3, "app_item"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {v4}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v4

    .line 98
    invoke-virtual {v2, v3, v4, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 102
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    return-void
.end method
