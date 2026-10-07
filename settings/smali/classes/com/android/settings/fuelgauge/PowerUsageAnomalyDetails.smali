.class public Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PowerUsageAnomalyDetails.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;


# static fields
.field static final EXTRA_ANOMALY_LIST:Ljava/lang/String; = "anomaly_list"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mAbnormalListGroup:Landroid/support/v7/preference/PreferenceGroup;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mAnomalies:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mIconDrawableFactory:Landroid/util/IconDrawableFactory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPackageManager:Landroid/content/pm/PackageManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static startBatteryAbnormalPage(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V
    .locals 3
    .param p0, "caller"    # Lcom/android/settings/SettingsActivity;
    .param p1, "fragment"    # Lcom/android/settings/core/InstrumentedPreferenceFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/SettingsActivity;",
            "Lcom/android/settings/core/InstrumentedPreferenceFragment;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p2, "anomalies":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/anomaly/Anomaly;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "anomaly_list"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 71
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 73
    const v2, 0x7f1201cd

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 77
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method getBadgedIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 117
    const-string v0, "PowerAbnormalUsageDetail"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 132
    const/16 v0, 0x3db

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 122
    const v0, 0x7f150085

    return v0
.end method

.method public onAnomalyHandled(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)V
    .locals 1
    .param p1, "anomaly"    # Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    .line 152
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAnomalies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->refreshUi()V

    .line 154
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "anomaly_list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAnomalies:Ljava/util/List;

    .line 85
    const-string v1, "app_abnormal_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAbnormalListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    invoke-static {v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 88
    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 89
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 100
    instance-of v0, p1, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;

    if-eqz v0, :cond_0

    .line 101
    move-object v0, p1

    check-cast v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;

    .line 102
    .local v0, "anomalyPreference":Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;->getAnomaly()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v1

    .line 104
    .local v1, "anomaly":Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    const/16 v2, 0x3db

    invoke-static {v1, v2}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->newInstance(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;

    move-result-object v2

    .line 106
    .local v2, "dialogFragment":Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "PowerAbnormalUsageDetail"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 109
    const/4 v3, 0x1

    return v3

    .line 112
    .end local v0
    .end local v1
    .end local v2
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->refreshUi()V

    .line 96
    return-void
.end method

.method refreshUi()V
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAbnormalListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAnomalies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 138
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAnomalies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    .line 139
    .local v2, "anomaly":Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    new-instance v3, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/Anomaly;)V

    .line 140
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v5, v2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    invoke-virtual {v4, v5}, Lcom/android/settings/fuelgauge/BatteryUtils;->getSummaryResIdFromAnomalyType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 141
    iget-object v4, v2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    iget v5, v2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->getBadgedIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 142
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 143
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAbnormalListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 137
    .end local v2
    .end local v3
    .end local v4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method
