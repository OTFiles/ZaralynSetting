.class public Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySaverPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AutoBatterySaverPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final DEFAULT_TRIGGER_LEVEL:I = 0x0

.field static final KEY_AUTO_BATTERY_SAVER:Ljava/lang/String; = "auto_battery_saver"


# instance fields
.field private final mDefaultTriggerLevelForOn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const-string v0, "auto_battery_saver"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySaverPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySaverPreferenceController;->mDefaultTriggerLevelForOn:I

    .line 50
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySaverPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_trigger_level"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public setChecked(Z)Z
    .locals 2
    .param p1, "isChecked"    # Z

    .line 65
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySaverPreferenceController;->mContext:Landroid/content/Context;

    .line 66
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/settings/fuelgauge/batterysaver/AutoBatterySaverPreferenceController;->mDefaultTriggerLevelForOn:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-static {v0, v1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setAutoBatterySaverTriggerLevel(Landroid/content/Context;I)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method
