.class public Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BatteryTipPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;
    }
.end annotation


# static fields
.field private static final KEY_BATTERY_TIPS:Ljava/lang/String; = "key_battery_tips"

.field private static final REQUEST_ANOMALY_ACTION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BatteryTipPreferenceController"


# instance fields
.field private mBatteryTipListener:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;

.field private mBatteryTipMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryTips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;"
        }
    .end annotation
.end field

.field mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mNeedUpdate:Z

.field mPrefContext:Landroid/content/Context;

.field mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 64
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "settingsActivity"    # Lcom/android/settings/SettingsActivity;
    .param p4, "fragment"    # Lcom/android/settings/core/InstrumentedPreferenceFragment;
    .param p5, "batteryTipListener"    # Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    iput-object p5, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTipListener:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTipMap:Ljava/util/Map;

    .line 73
    iput-object p4, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 74
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    .line 75
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mNeedUpdate:Z

    .line 77
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 87
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 91
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;-><init>(IJ)V

    .line 93
    .local v0, "summaryTip":Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;->buildPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 94
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 125
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTipMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    .line 126
    .local v0, "batteryTip":Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->shouldShowDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 129
    invoke-virtual {v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v1

    .line 128
    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->newInstance(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;I)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object v1

    .line 130
    .local v1, "dialogFragment":Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 131
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "BatteryTipPreferenceController"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 132
    .end local v1
    goto :goto_0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->getActionForBatteryTip(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;

    move-result-object v1

    .line 135
    .local v1, "action":Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
    if-eqz v1, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->handlePositiveAction(I)V

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTipListener:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTipListener:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;

    invoke-interface {v2, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;->onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V

    .line 143
    .end local v1
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 146
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public needUpdate()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mNeedUpdate:Z

    return v0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 150
    if-eqz p1, :cond_0

    .line 151
    const-string v0, "key_battery_tips"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 152
    .local v0, "batteryTips":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;>;"
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->updateBatteryTips(Ljava/util/List;)V

    .line 154
    .end local v0
    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 157
    const-string v0, "key_battery_tips"

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTips:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 158
    return-void
.end method

.method public updateBatteryTips(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "batteryTips":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;>;"
    if-nez p1, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTips:Ljava/util/List;

    if-nez v0, :cond_1

    .line 101
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTips:Ljava/util/List;

    goto :goto_1

    .line 104
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 105
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTips:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0
    .end local v1
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 110
    const/4 v0, 0x0

    .restart local v0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1
    :goto_2
    if-ge v0, v1, :cond_4

    .line 111
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTips:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    .line 112
    .local v2, "batteryTip":Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 113
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->buildPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 114
    .local v3, "preference":Landroid/support/v7/preference/Preference;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTipMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 116
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    .line 117
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->needUpdate()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mNeedUpdate:Z

    .line 118
    goto :goto_3

    .line 110
    .end local v2
    .end local v3
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 121
    .end local v0
    .end local v1
    :cond_4
    :goto_3
    return-void
.end method
