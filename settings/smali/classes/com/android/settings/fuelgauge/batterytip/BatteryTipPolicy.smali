.class public Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;
.super Ljava/lang/Object;
.source "BatteryTipPolicy.java"


# instance fields
.field public final appRestrictionEnabled:Z

.field public final batterySaverTipEnabled:Z

.field public final batteryTipEnabled:Z

.field public final dataHistoryRetainDay:I

.field public final excessiveBgDrainPercentage:I

.field public final highUsageAppCount:I

.field public final highUsageBatteryDraining:I

.field public final highUsageEnabled:Z

.field public final highUsagePeriodMs:J

.field public final lowBatteryEnabled:Z

.field public final lowBatteryHour:I

.field private final mParser:Landroid/util/KeyValueListParser;

.field public final reducedBatteryEnabled:Z

.field public final reducedBatteryPercent:I

.field public final summaryEnabled:Z

.field public final testBatterySaverTip:Z

.field public final testHighUsageTip:Z

.field public final testLowBatteryTip:Z

.field public final testSmartBatteryTip:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 207
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;-><init>(Landroid/content/Context;Landroid/util/KeyValueListParser;)V

    .line 208
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/KeyValueListParser;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/util/KeyValueListParser;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_tip_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 220
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "BatteryTipPolicy"

    const-string v3, "Bad battery tip constants"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "battery_tip_enabled"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->batteryTipEnabled:Z

    .line 223
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "summary_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->summaryEnabled:Z

    .line 224
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "battery_saver_tip_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->batterySaverTipEnabled:Z

    .line 225
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "high_usage_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageEnabled:Z

    .line 226
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "high_usage_app_count"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageAppCount:I

    .line 227
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "high_usage_period_ms"

    const-wide/16 v5, 0x2

    .line 228
    invoke-static {v5, v6}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    .line 227
    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsagePeriodMs:J

    .line 229
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "high_usage_battery_draining"

    const/16 v5, 0x19

    invoke-virtual {v1, v2, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageBatteryDraining:I

    .line 230
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "app_restriction_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->appRestrictionEnabled:Z

    .line 231
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "reduced_battery_enabled"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->reducedBatteryEnabled:Z

    .line 232
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "reduced_battery_percent"

    const/16 v6, 0x32

    invoke-virtual {v1, v2, v6}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->reducedBatteryPercent:I

    .line 233
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "low_battery_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->lowBatteryEnabled:Z

    .line 234
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "low_battery_hour"

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->lowBatteryHour:I

    .line 235
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "data_history_retain_day"

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->dataHistoryRetainDay:I

    .line 236
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "excessive_bg_drain_percentage"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->excessiveBgDrainPercentage:I

    .line 238
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "test_battery_saver_tip"

    invoke-virtual {v1, v2, v5}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testBatterySaverTip:Z

    .line 239
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "test_high_usage_tip"

    invoke-virtual {v1, v2, v5}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testHighUsageTip:Z

    .line 240
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "test_smart_battery_tip"

    invoke-virtual {v1, v2, v5}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testSmartBatteryTip:Z

    .line 241
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "test_low_battery_tip"

    invoke-virtual {v1, v2, v5}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testLowBatteryTip:Z

    .line 242
    return-void
.end method
