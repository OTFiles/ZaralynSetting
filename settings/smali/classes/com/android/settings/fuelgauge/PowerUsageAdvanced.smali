.class public Lcom/android/settings/fuelgauge/PowerUsageAdvanced;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageAdvanced.java"


# static fields
.field static final MENU_TOGGLE_APPS:I = 0x2

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

.field private mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field mShowAllApps:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    return-void
.end method

.method private updateHistPrefSummary(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, "batteryIntent":Landroid/content/Intent;
    const-string v1, "plugged"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 158
    .local v1, "plugged":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v2, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 159
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 160
    invoke-interface {v3}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getAdvancedUsageScreenInfoString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setBottomSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->hideBottomSummary()V

    .line 164
    :goto_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v7, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    const-string v3, "app_list"

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settings/SettingsActivity;

    move-object v1, v7

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    iput-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    .line 136
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 86
    const-string v0, "AdvancedBatteryUsage"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 81
    const/16 v0, 0x33

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 91
    const v0, 0x7f150086

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    const-string v1, "battery_graph"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    .line 62
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 64
    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 67
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->updateHistPrefSummary(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->restoreSavedInstance(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 96
    nop

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1206e5

    goto :goto_0

    :cond_0
    const v0, 0x7f120ce5

    .line 96
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 99
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onDestroy()V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 77
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    .line 106
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1206e5

    goto :goto_0

    :cond_1
    const v0, 0x7f120ce5

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 107
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x354

    iget-boolean v4, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->restartBatteryStatsLoader(I)V

    .line 111
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string v0, "show_all_apps"

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    return-void
.end method

.method protected refreshUi(I)V
    .locals 4
    .param p1, "refreshType"    # I

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->updatePreference(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V

    .line 148
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->updateHistPrefSummary(Landroid/content/Context;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->refreshAppListGroup(Lcom/android/internal/os/BatteryStatsHelper;Z)V

    .line 151
    return-void
.end method

.method restoreSavedInstance(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const-string v0, "show_all_apps"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mShowAllApps:Z

    .line 122
    :cond_0
    return-void
.end method
