.class public Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;
.super Ljava/lang/Object;
.source "HighUsageDataParser.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;


# instance fields
.field private mBatteryDrain:I

.field private mEndBatteryLevel:B

.field private mEndTimeMs:J

.field private mLastPeriodBatteryLevel:B

.field private mThreshold:I

.field private final mTimePeriodMs:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .param p1, "timePeriodMs"    # J
    .param p3, "threshold"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mTimePeriodMs:J

    .line 44
    iput p3, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mThreshold:I

    .line 45
    return-void
.end method


# virtual methods
.method public isDeviceHeavilyUsed()Z
    .locals 2

    .line 76
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mBatteryDrain:I

    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mThreshold:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDataGap()V
    .locals 0

    .line 65
    return-void
.end method

.method public onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V
    .locals 6
    .param p1, "time"    # J
    .param p3, "record"    # Landroid/os/BatteryStats$HistoryItem;

    .line 54
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p3, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mEndTimeMs:J

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mTimePeriodMs:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 57
    :cond_0
    iget-byte v0, p3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mLastPeriodBatteryLevel:B

    .line 59
    :cond_1
    iget-byte v0, p3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mEndBatteryLevel:B

    .line 60
    return-void
.end method

.method public onParsingDone()V
    .locals 2

    .line 69
    iget-byte v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mLastPeriodBatteryLevel:B

    iget-byte v1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mEndBatteryLevel:B

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mBatteryDrain:I

    .line 70
    return-void
.end method

.method public onParsingStarted(JJ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 49
    iput-wide p3, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mEndTimeMs:J

    .line 50
    return-void
.end method
