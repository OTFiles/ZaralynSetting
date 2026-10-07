.class public Lcom/android/settings/fuelgauge/RestrictedAppDetails;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "RestrictedAppDetails.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;


# static fields
.field static final EXTRA_APP_INFO_LIST:Ljava/lang/String; = "app_info_list"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mAppInfos:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

.field mIconDrawableFactory:Landroid/util/IconDrawableFactory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPackageManager:Landroid/content/pm/PackageManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mRestrictedAppListGroup:Landroid/support/v7/preference/PreferenceGroup;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 71
    new-instance v0, Lcom/android/settingslib/widget/FooterPreferenceMixin;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;-><init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    .line 71
    return-void
.end method

.method public static synthetic lambda$refreshUi$0(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/AppInfo;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "appInfo"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;
    .param p3, "value"    # Ljava/lang/Object;

    .line 155
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    .line 156
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 155
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->createDialogFragment(Lcom/android/settings/fuelgauge/batterytip/AppInfo;Z)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object v0

    .line 157
    .local v0, "fragment":Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "RestrictedAppDetails"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 160
    return v1
.end method

.method public static startRestrictedAppDetails(Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V
    .locals 3
    .param p0, "fragment"    # Lcom/android/settings/core/InstrumentedPreferenceFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/core/InstrumentedPreferenceFragment;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/AppInfo;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "app_info_list"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 79
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/fuelgauge/RestrictedAppDetails;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 82
    const v2, 0x7f120bdf

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 85
    return-void
.end method


# virtual methods
.method createDialogFragment(Lcom/android/settings/fuelgauge/batterytip/AppInfo;Z)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
    .locals 2
    .param p1, "appInfo"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    .param p2, "toRestrict"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 188
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 189
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-direct {v1, v0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    goto :goto_0

    .line 190
    :cond_0
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-direct {v1, v0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;-><init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    :goto_0
    move-object v0, v1

    .line 191
    .local v0, "batteryTip":Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    nop

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getMetricsCategory()I

    move-result v1

    .line 191
    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->newInstance(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;I)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object v1

    return-object v1
.end method

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

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 131
    const v0, 0x7f1206ab

    return v0
.end method

.method getKeyFromAppInfo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "appInfo"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 111
    const-string v0, "RestrictedAppDetails"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 126
    const/16 v0, 0x505

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 116
    const v0, 0x7f150094

    return v0
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 4
    .param p1, "batteryTip"    # Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    .line 172
    instance-of v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    .line 173
    .local v0, "isRestricted":Z
    if-eqz v0, :cond_0

    .line 174
    move-object v1, p1

    check-cast v1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->getRestrictAppList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .local v1, "appInfo":Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    goto :goto_0

    .line 176
    .end local v1
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->getUnrestrictAppInfo()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v1

    .line 179
    .restart local v1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 180
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getKeyFromAppInfo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/CheckBoxPreference;

    .line 181
    .local v2, "preference":Landroid/support/v7/preference/CheckBoxPreference;
    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v1

    const v2, 0x7f120bde

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 94
    const-string v1, "restrict_app_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app_info_list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mAppInfos:Ljava/util/List;

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 97
    invoke-static {v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 98
    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->refreshUi()V

    .line 101
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method refreshUi()V
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mAppInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 140
    new-instance v3, Lcom/android/settings/widget/AppCheckBoxPreference;

    invoke-direct {v3, v0}, Lcom/android/settings/widget/AppCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 141
    .local v3, "checkBoxPreference":Landroid/support/v7/preference/CheckBoxPreference;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mAppInfos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 143
    .local v4, "appInfo":Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    .line 144
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 143
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 145
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v7, v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    iget-object v8, v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    .line 146
    invoke-virtual {v6, v7, v8}, Lcom/android/settings/fuelgauge/BatteryUtils;->isForceAppStandbyEnabled(ILjava/lang/String;)Z

    move-result v6

    .line 145
    invoke-virtual {v3, v6}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 147
    iget-object v6, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v6, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    iget v9, v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    .line 151
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 149
    invoke-static {v6, v7, v8, v9}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 148
    invoke-virtual {v3, v6}, Landroid/support/v7/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->getKeyFromAppInfo(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 153
    new-instance v6, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$9OOxuAylZQQH-NDtRgh0ZoFLi_8;

    invoke-direct {v6, p0, v4}, Lcom/android/settings/fuelgauge/-$$Lambda$RestrictedAppDetails$9OOxuAylZQQH-NDtRgh0ZoFLi_8;-><init>(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    iget-object v6, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->mRestrictedAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 165
    .end local v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v5

    .line 164
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 139
    .end local v3
    .end local v4
    .end local v5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1
    .end local v2
    :cond_0
    return-void
.end method
