.class public Lcom/android/settings/fuelgauge/BatterySaverController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BatterySaverController.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final KEY_BATTERY_SAVER:Ljava/lang/String; = "battery_saver_summary"


# instance fields
.field private mBatterySaverPref:Landroid/support/v7/preference/Preference;

.field private final mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const-string v0, "battery_saver_summary"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverController$1;

    new-instance v1, Landroid/os/Handler;

    .line 109
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverController$1;-><init>(Lcom/android/settings/fuelgauge/BatterySaverController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mObserver:Landroid/database/ContentObserver;

    .line 47
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    .line 48
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    .line 49
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setBatterySaverListener(Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatterySaverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatterySaverController;

    .line 37
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->updateSummary()V

    return-void
.end method

.method private updateSummary()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatterySaverPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 65
    const-string v0, "battery_saver_summary"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatterySaverPref:Landroid/support/v7/preference/Preference;

    .line 66
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "battery_saver_summary"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 7

    .line 91
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 92
    .local v0, "isPowerSaveOn":Z
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_trigger_level"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, "percent":I
    if-eqz v0, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const v3, 0x7f12020f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 96
    :cond_0
    if-eqz v1, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const v4, 0x7f12020d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 98
    invoke-static {v1}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 97
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const v3, 0x7f12020e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public onBatteryChanged(Z)V
    .locals 0
    .param p1, "pluggedIn"    # Z

    .line 123
    return-void
.end method

.method public onPowerSaveModeChanged()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->updateSummary()V

    .line 119
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_trigger_level"

    .line 71
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mObserver:Landroid/database/ContentObserver;

    .line 70
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-virtual {v0, v3}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->updateSummary()V

    .line 76
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    .line 82
    return-void
.end method

.method refreshConditionManager()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    const-class v1, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;->refreshState()V

    .line 87
    return-void
.end method
