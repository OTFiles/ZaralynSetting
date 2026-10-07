.class public Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AutoBatterySeekBarPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;
    }
.end annotation


# static fields
.field static final KEY_AUTO_BATTERY_SEEK_BAR:Ljava/lang/String; = "battery_saver_seek_bar"

.field private static final TAG:Ljava/lang/String; = "AutoBatterySeekBarPreferenceController"


# instance fields
.field private mContentObserver:Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;

.field private mPreference:Lcom/android/settings/widget/SeekBarPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 52
    const-string v0, "battery_saver_seek_bar"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;-><init>(Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContentObserver:Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;

    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;

    .line 43
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;)Lcom/android/settings/widget/SeekBarPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;

    .line 43
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 62
    const-string v0, "battery_saver_seek_bar"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    .line 64
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setAccessibilityRangeInfoType(I)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->updatePreference(Landroid/support/v7/preference/Preference;)V

    .line 68
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 93
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 94
    .local v0, "progress":I
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_trigger_level"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    const/4 v1, 0x1

    return v1
.end method

.method public onStart()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContentObserver:Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;->registerContentObserver()V

    .line 84
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContentObserver:Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController$AutoBatterySaverSettingObserver;->unRegisterContentObserver()V

    .line 89
    return-void
.end method

.method updatePreference(Landroid/support/v7/preference/Preference;)V
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 101
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "low_power_trigger_level_max"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, "maxLevel":I
    if-lez v1, :cond_2

    .line 107
    instance-of v3, p1, Lcom/android/settings/widget/SeekBarPreference;

    if-nez v3, :cond_0

    .line 108
    const-string v3, "AutoBatterySeekBarPreferenceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected preference class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_0
    move-object v3, p1

    check-cast v3, Lcom/android/settings/widget/SeekBarPreference;

    .line 111
    .local v3, "seekBarPreference":Lcom/android/settings/widget/SeekBarPreference;
    invoke-virtual {v3}, Lcom/android/settings/widget/SeekBarPreference;->getMin()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 112
    const-string v4, "AutoBatterySeekBarPreferenceController"

    const-string v5, "LOW_POWER_MODE_TRIGGER_LEVEL_MAX too low; ignored."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 120
    .end local v3
    :cond_2
    :goto_0
    const-string v3, "low_power_trigger_level"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 123
    .local v3, "level":I
    if-nez v3, :cond_3

    .line 124
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 126
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 127
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f120210

    new-array v4, v4, [Ljava/lang/Object;

    .line 128
    invoke-static {v3}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    .line 127
    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    move-object v2, p1

    check-cast v2, Lcom/android/settings/widget/SeekBarPreference;

    .line 130
    .local v2, "seekBarPreference":Lcom/android/settings/widget/SeekBarPreference;
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 131
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f120214

    .line 132
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SeekBarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    .end local v2
    :goto_1
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySeekBarPreferenceController;->updatePreference(Landroid/support/v7/preference/Preference;)V

    .line 79
    return-void
.end method
