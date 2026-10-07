.class public Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;
.super Ljava/lang/Object;
.source "LowBatteryDetector.java"


# instance fields
.field private mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field private mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWarningLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;
    .param p3, "batteryInfo"    # Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    .line 40
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 41
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPowerManager:Landroid/os/PowerManager;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mWarningLevel:I

    .line 44
    return-void
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 49
    .local v0, "powerSaveModeOn":Z
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget v1, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    iget v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mWarningLevel:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-boolean v1, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v1, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget v4, v4, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->lowBatteryHour:I

    int-to-long v4, v4

    .line 51
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 53
    .local v1, "lowBattery":Z
    :goto_1
    const/4 v2, 0x2

    .line 54
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v3, v3, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->lowBatteryEnabled:Z

    if-eqz v3, :cond_4

    .line 55
    if-eqz v0, :cond_2

    .line 57
    const/4 v2, 0x1

    goto :goto_2

    .line 58
    :cond_2
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v3, v3, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testLowBatteryTip:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-boolean v3, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 60
    :cond_3
    const/4 v2, 0x0

    .line 64
    :cond_4
    :goto_2
    new-instance v3, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object v4, v4, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    invoke-direct {v3, v2, v0, v4}, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;-><init>(IZLjava/lang/CharSequence;)V

    return-object v3
.end method
