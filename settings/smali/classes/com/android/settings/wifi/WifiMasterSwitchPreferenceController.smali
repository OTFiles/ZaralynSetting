.class public Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiMasterSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiPreference:Lcom/android/settings/widget/MasterSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 49
    new-instance v0, Lcom/android/settings/wifi/WifiSummaryUpdater;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/wifi/WifiSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    .line 50
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 55
    const-string v0, "toggle_wifi"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mWifiPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    .line 56
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "toggle_wifi"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSummaryUpdater;->register(Z)V

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSummaryUpdater;->register(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 86
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/widget/MasterSwitchController;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mWifiPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {v2, v3}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Lcom/android/settings/BeanVariable;Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 88
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchController()V

    .line 95
    :cond_0
    return-void
.end method

.method public onSummaryChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mWifiPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mWifiPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    return-void
.end method
