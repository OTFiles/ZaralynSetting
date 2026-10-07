.class public abstract Lcom/android/settings/fuelgauge/PowerUsageBase;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PowerUsageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;
    }
.end annotation


# static fields
.field static final MENU_STATS_REFRESH:I = 0x2


# instance fields
.field private mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

.field protected mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field protected mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/android/settings/fuelgauge/PowerUsageBase;I)V
    .locals 0
    .param p1, "type"    # I

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->restartBatteryStatsLoader(I)V

    .line 63
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/app/Activity;)V

    .line 50
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mUm:Landroid/os/UserManager;

    .line 51
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->setHasOptionsMenu(Z)V

    .line 60
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    .line 61
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    new-instance v1, Lcom/android/settings/fuelgauge/-$$Lambda$PowerUsageBase$FbH3lnw7c_hajFOBNpt07exnLiM;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$PowerUsageBase$FbH3lnw7c_hajFOBNpt07exnLiM;-><init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->setBatteryChangedListener(Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;)V

    .line 64
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->unRegister()V

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tmp_bat_history.bin"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->dropFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->register()V

    .line 77
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 68
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 69
    return-void
.end method

.method protected abstract refreshUi(I)V
.end method

.method protected restartBatteryStatsLoader(I)V
    .locals 4
    .param p1, "refreshType"    # I

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "refresh_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;

    invoke-direct {v2, p0}, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;-><init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 90
    return-void
.end method

.method protected updatePreference(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V
    .locals 4
    .param p1, "historyPref"    # Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setStats(Lcom/android/internal/os/BatteryStatsHelper;)V

    .line 97
    const-string v2, "PowerUsageBase"

    const-string v3, "updatePreference"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 98
    return-void
.end method
