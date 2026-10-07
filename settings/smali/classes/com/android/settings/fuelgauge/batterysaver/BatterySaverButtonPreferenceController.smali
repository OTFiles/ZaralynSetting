.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "BatterySaverButtonPreferenceController.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    .line 47
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    .line 48
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setBatterySaverListener(Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/TwoStateButtonPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;

    .line 75
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public onBatteryChanged(Z)V
    .locals 2
    .param p1, "pluggedIn"    # Z

    .line 107
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/TwoStateButtonPreference;->setButtonEnabled(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public onPowerSaveModeChanged()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->isChecked()Z

    move-result v0

    .line 100
    .local v0, "isChecked":Z
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/TwoStateButtonPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/TwoStateButtonPreference;->setChecked(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    .line 64
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    .line 69
    return-void
.end method

.method public setChecked(Z)Z
    .locals 2
    .param p1, "stateOn"    # Z

    .line 85
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(Landroid/content/Context;ZZ)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/TwoStateButtonPreference;->setChecked(Z)V

    .line 95
    :cond_0
    return-void
.end method
