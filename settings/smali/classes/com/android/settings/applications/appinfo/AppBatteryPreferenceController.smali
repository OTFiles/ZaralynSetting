.class public Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppBatteryPreferenceController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/core/BasePreferenceController;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/internal/os/BatteryStatsHelper;",
        ">;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/events/OnPause;",
        "Lcom/android/settingslib/core/lifecycle/events/OnResume;"
    }
.end annotation


# static fields
.field private static final KEY_BATTERY:Ljava/lang/String; = "battery"


# instance fields
.field mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryPercent:Ljava/lang/String;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private final mPackageName:Ljava/lang/String;

.field private final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field mSipper:Lcom/android/internal/os/BatterySipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 70
    const-string v0, "battery"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 73
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPackageName:Ljava/lang/String;

    .line 74
    if-eqz p4, :cond_0

    .line 75
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 78
    :cond_0
    invoke-static {}, Lcom/android/settings/OthersSettings;->isNoBatteryPad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 96
    return-void
.end method

.method findTargetSipper(Lcom/android/internal/os/BatteryStatsHelper;I)Lcom/android/internal/os/BatterySipper;
    .locals 5
    .param p1, "batteryHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "uid"    # I

    .line 178
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 181
    .local v3, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 182
    return-object v3

    .line 179
    .end local v3
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v1
    .end local v2
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 12
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 100
    const-string v0, "battery"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->isBatteryStatsAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 106
    .local v0, "userManager":Landroid/os/UserManager;
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mSipper:Lcom/android/internal/os/BatterySipper;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 107
    .local v1, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPackageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 109
    invoke-virtual {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/settings/SettingsActivity;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryPercent:Ljava/lang/String;

    const/4 v11, 0x0

    .line 108
    move-object v9, v1

    invoke-static/range {v5 .. v11}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Ljava/util/List;)V

    .line 112
    .end local v0
    .end local v1
    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 114
    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPackageName:Ljava/lang/String;

    .line 113
    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/lang/String;)V

    .line 116
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method isBatteryStatsAvailable()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mSipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 2
    .param p2, "batteryHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ")V"
        }
    .end annotation

    .line 138
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/internal/os/BatteryStatsHelper;>;"
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 139
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 140
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p2, v1}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->findTargetSipper(Lcom/android/internal/os/BatteryStatsHelper;I)Lcom/android/internal/os/BatterySipper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mSipper:Lcom/android/internal/os/BatterySipper;

    .line 142
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->updateBattery()V

    .line 146
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p2, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->onLoadFinished(Landroid/content/Loader;Lcom/android/internal/os/BatteryStatsHelper;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/internal/os/BatteryStatsHelper;>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 128
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 123
    return-void
.end method

.method updateBattery()V
    .locals 14

    .line 154
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->isBatteryStatsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v0

    .line 159
    .local v0, "dischargeAmount":I
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v3

    .line 160
    .local v11, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v3, v11}, Lcom/android/settings/fuelgauge/BatteryUtils;->removeHiddenBatterySippers(Ljava/util/List;)D

    move-result-wide v12

    .line 161
    .local v12, "hiddenAmount":D
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mSipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 162
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v6

    .line 161
    move-wide v8, v12

    move v10, v0

    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDDI)D

    move-result-wide v3

    double-to-int v3, v3

    .line 164
    .local v3, "percentOfMax":I
    invoke-static {v3}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryPercent:Ljava/lang/String;

    .line 165
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f12022e

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryPercent:Ljava/lang/String;

    aput-object v7, v1, v2

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    .end local v0
    .end local v3
    .end local v11
    .end local v12
    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f12093a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    :goto_0
    return-void
.end method
