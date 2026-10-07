.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field static final BATTERY_INFO_LOADER:I = 0x1

.field static final BATTERY_TIP_LOADER:I = 0x2

.field static final MENU_ADVANCED_BATTERY:I = 0x2

.field static final MENU_STATS_TYPE:I = 0x1

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field mAnomalySparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

.field mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field mBatteryInfoDebugLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

.field mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

.field private mBatteryTipsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

.field mNeedUpdateBatteryTip:Z

.field mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mPowerGuaderWhiteList:Landroid/support/v7/preference/PreferenceScreen;

.field mScreenUsagePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

.field private mStatsType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 528
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 552
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 127
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 149
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoDebugLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 194
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static getDashboardLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 517
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 518
    .local v0, "formatter":Landroid/text/BidiFormatter;
    iget-object v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 519
    iget-object v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .local v1, "label":Ljava/lang/CharSequence;
    goto :goto_0

    .line 521
    .end local v1
    :cond_0
    const v1, 0x7f120a1c

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .line 522
    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 523
    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 521
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 525
    .restart local v1
    :goto_0
    return-object v1
.end method

.method public static isActivityExsistByPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 265
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 266
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 267
    .local v3, "pkginfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 268
    move v4, v0

    .local v4, "inum":I
    :goto_0
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 270
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v5, v5, v4

    .line 271
    .local v5, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    .line 272
    return v2

    .line 268
    .end local v5
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 278
    .end local v1
    .end local v3
    .end local v4
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1
    goto :goto_1

    .line 276
    :catch_1
    move-exception v1

    .line 277
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 280
    .end local v1
    :cond_1
    nop

    .line 281
    :goto_1
    return v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 10
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

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 302
    .local v0, "lifecycle":Lcom/android/settingslib/core/lifecycle/Lifecycle;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 303
    .local v1, "activity":Lcom/android/settings/SettingsActivity;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v2, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v3, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-direct {v3, p1, v1, p0, v0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    .line 306
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v3, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    const-string v6, "battery_tip"

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/android/settings/SettingsActivity;

    move-object v4, v3

    move-object v5, p1

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    .line 310
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 311
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v3, Lcom/android/settings/display/BatteryPercentagePreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/display/BatteryPercentagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    return-object v2
.end method

.method getAnomalyDetectionPolicy()Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;
    .locals 2

    .line 393
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 332
    const v0, 0x7f1206b9

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 291
    const-string v0, "PowerUsageSummary"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 286
    const/16 v0, 0x4ef

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 296
    const v0, 0x7f150089

    return v0
.end method

.method initFeatureProvider()V
    .locals 2

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 430
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 431
    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 432
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 241
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 244
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "power_guader_white_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerGuaderWhiteList:Landroid/support/v7/preference/PreferenceScreen;

    .line 245
    const-string v1, "com.readboy.killapp"

    .line 246
    .local v1, "killAppPkgName":Ljava/lang/String;
    const-string v2, "com.readboy.killapp.service.WhiteListActivity"

    .line 247
    .local v2, "killAppActName":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isActivityExsistByPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerGuaderWhiteList:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 249
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerGuaderWhiteList:Landroid/support/v7/preference/PreferenceScreen;

    goto :goto_0

    .line 251
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v3, "prefIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 253
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerGuaderWhiteList:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 255
    .end local v3
    :goto_0
    return-void
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 0
    .param p1, "batteryTip"    # Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryTipLoader()V

    .line 483
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 216
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setAnimationAllowed(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->initFeatureProvider()V

    .line 220
    const-string v0, "battery_header"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    .line 223
    const-string v0, "screen_usage"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->removePreference(Ljava/lang/String;)Z

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mScreenUsagePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 227
    const-string v1, "last_full_charge"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->removePreference(Ljava/lang/String;)Z

    .line 228
    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 229
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    const v1, 0x7f1201ed

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 231
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAnomalySparseArray:Landroid/util/SparseArray;

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryInfoLoader()V

    .line 234
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateBatteryTipFlag(Landroid/os/Bundle;)V

    .line 236
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 325
    const/4 v0, 0x0

    const/4 v1, 0x2

    const v2, 0x7f1200cd

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 327
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 328
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->showBothEstimates()V

    .line 464
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 465
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 337
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 354
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 347
    :pswitch_0    # 0x2
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    .line 348
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v2, 0x7f1200cd

    .line 350
    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 352
    return v1

    .line 339
    :pswitch_1    # 0x1
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 340
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_0

    .line 342
    :cond_0
    iput v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 344
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshUi(I)V

    .line 345
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 476
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 477
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->saveInstanceState(Landroid/os/Bundle;)V

    .line 478
    return-void
.end method

.method protected refreshUi(I)V
    .locals 6
    .param p1, "refreshType"    # I

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 360
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 361
    return-void

    .line 365
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq p1, v2, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryTipLoader()V

    goto :goto_0

    .line 369
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    .line 373
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryInfoLoader()V

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateLastFullChargePreference()V

    .line 375
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mScreenUsagePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-eqz v1, :cond_2

    .line 376
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mScreenUsagePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 377
    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateScreenUsageTime(Lcom/android/internal/os/BatteryStatsHelper;)J

    move-result-wide v3

    long-to-double v3, v3

    const/4 v5, 0x0

    .line 376
    invoke-static {v2, v3, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 379
    :cond_2
    return-void
.end method

.method restartBatteryInfoLoader()V
    .locals 4

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 449
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEstimateDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0415

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, "header":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 454
    .end local v0
    :cond_0
    return-void
.end method

.method protected restartBatteryStatsLoader(I)V
    .locals 1
    .param p1, "refreshType"    # I

    .line 470
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->restartBatteryStatsLoader(I)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->quickUpdateHeaderPreference()V

    .line 472
    return-void
.end method

.method restartBatteryTipLoader()V
    .locals 4

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 384
    return-void
.end method

.method setBatteryLayoutPreference(Lcom/android/settings/applications/LayoutPreference;)V
    .locals 0
    .param p1, "layoutPreference"    # Lcom/android/settings/applications/LayoutPreference;

    .line 388
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    .line 389
    return-void
.end method

.method showBothEstimates()V
    .locals 5

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 419
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 420
    invoke-interface {v1, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x3

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoDebugLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 425
    return-void

    .line 421
    :cond_1
    :goto_0
    return-void
.end method

.method updateAnomalySparseArray(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;)V"
        }
    .end annotation

    .line 436
    .local p1, "anomalies":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/anomaly/Anomaly;>;"
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAnomalySparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 437
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    .line 438
    .local v1, "anomaly":Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAnomalySparseArray:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAnomalySparseArray:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 441
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAnomalySparseArray:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    .end local v1
    goto :goto_0

    .line 443
    :cond_1
    return-void
.end method

.method updateBatteryTipFlag(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 458
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->needUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    .line 459
    return-void
.end method

.method updateLastFullChargePreference()V
    .locals 7

    .line 398
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    const v2, 0x7f1201ee

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(I)V

    .line 402
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v3, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    long-to-double v3, v3

    invoke-static {v2, v3, v4, v1}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 406
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateLastFullChargeTime(Lcom/android/internal/os/BatteryStatsHelper;J)J

    move-result-wide v2

    .line 408
    .local v2, "lastFullChargeTime":J
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    const v4, 0x7f1201fb

    invoke-virtual {v0, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(I)V

    .line 409
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    long-to-double v5, v2

    invoke-static {v4, v5, v6, v1}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 414
    .end local v2
    :cond_1
    :goto_0
    return-void
.end method

.method protected updateViews(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p1, "batteryInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/BatteryInfo;>;"
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    .line 169
    const v1, 0x7f0a007b

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryMeterView;

    .line 170
    .local v0, "batteryView":Lcom/android/settings/fuelgauge/BatteryMeterView;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    .line 171
    const v2, 0x7f0a007d

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 172
    .local v1, "percentRemaining":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a0415

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 173
    .local v2, "summary1":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    const v4, 0x7f0a0416

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 174
    .local v3, "summary2":Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 175
    .local v4, "oldInfo":Lcom/android/settings/fuelgauge/BatteryInfo;
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 176
    .local v6, "newInfo":Lcom/android/settings/fuelgauge/BatteryInfo;
    iget v7, v4, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-static {v7}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-wide v9, v4, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 183
    invoke-static {v9, v10}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v9

    .line 182
    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 181
    invoke-interface {v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getOldEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-wide v9, v6, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 188
    invoke-static {v9, v10}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v9

    .line 187
    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 186
    invoke-interface {v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget v7, v4, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-virtual {v0, v7}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setBatteryLevel(I)V

    .line 191
    iget-boolean v7, v4, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    xor-int/2addr v5, v7

    invoke-virtual {v0, v5}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setCharging(Z)V

    .line 192
    return-void
.end method
