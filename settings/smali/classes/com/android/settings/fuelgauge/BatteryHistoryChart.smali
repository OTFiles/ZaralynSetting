.class public Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;,
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;,
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;,
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;
    }
.end annotation


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field mBatteryCriticalLevel:I

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field mBatteryWarnLevel:I

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mBitmap:Landroid/graphics/Bitmap;

.field mCameraOnLabel:Ljava/lang/String;

.field mCameraOnOffset:I

.field final mCameraOnPaint:Landroid/graphics/Paint;

.field final mCameraOnPath:Landroid/graphics/Path;

.field mCanvas:Landroid/graphics/Canvas;

.field mChargeDurationString:Ljava/lang/String;

.field mChargeDurationStringWidth:I

.field mChargeLabelStringWidth:I

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field mChartMinHeight:I

.field mCpuRunningLabel:Ljava/lang/String;

.field mCpuRunningOffset:I

.field final mCpuRunningPaint:Landroid/graphics/Paint;

.field final mCpuRunningPath:Landroid/graphics/Path;

.field final mDateLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mDateLinePaint:Landroid/graphics/Paint;

.field final mDateLinePath:Landroid/graphics/Path;

.field final mDebugRectPaint:Landroid/graphics/Paint;

.field mDrainString:Ljava/lang/String;

.field mDrainStringWidth:I

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mEndDataWallTime:J

.field mEndWallTime:J

.field mFlashlightOnLabel:Ljava/lang/String;

.field mFlashlightOnOffset:I

.field final mFlashlightOnPaint:Landroid/graphics/Paint;

.field final mFlashlightOnPath:Landroid/graphics/Path;

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveCamera:Z

.field mHaveFlashlight:Z

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHeaderHeight:I

.field mHeaderTextAscent:I

.field mHeaderTextDescent:I

.field final mHeaderTextPaint:Landroid/text/TextPaint;

.field mHistStart:J

.field mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field mLargeMode:Z

.field mLastHeight:I

.field mLastWidth:I

.field mLevelBottom:I

.field mLevelLeft:I

.field mLevelOffset:I

.field mLevelRight:I

.field mLevelTop:I

.field mLineWidth:I

.field mMaxPercentLabelString:Ljava/lang/String;

.field mMaxPercentLabelStringWidth:I

.field mMinPercentLabelString:Ljava/lang/String;

.field mMinPercentLabelStringWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStartWallTime:J

.field mStats:Landroid/os/BatteryStats;

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field final mTimeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mTimeRemainPaint:Landroid/graphics/Paint;

.field final mTimeRemainPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 354
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 128
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 129
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 132
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 133
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    .line 135
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 137
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    .line 138
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    .line 139
    new-instance v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct {v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    .line 140
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 141
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    .line 142
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    .line 144
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 145
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 146
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 147
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 148
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    .line 149
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    .line 150
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 151
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 152
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    .line 153
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    .line 154
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 155
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    .line 156
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    .line 196
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 197
    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 230
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    .line 358
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0055

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    .line 360
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0025

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    .line 363
    nop

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 363
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    .line 366
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    .line 367
    .local v2, "accentColor":I
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 369
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    const/16 v5, 0x80

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 370
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 371
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v5, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 372
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 373
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    const/16 v7, 0xc0

    invoke-virtual {v4, v7, v5, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 374
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 375
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    const v5, -0x312845

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 377
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 380
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 381
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 382
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 383
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 384
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    sget-object v5, Lcom/android/settings/Utils;->BADNESS_COLORS:[I

    invoke-virtual {v4, v5}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 385
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5, v5, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 386
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 387
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    sget-object v4, Lcom/android/settings/R$styleable;->BatteryHistoryChart:[I

    .line 396
    move-object/from16 v5, p2

    invoke-virtual {v1, v5, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 399
    .local v4, "a":Landroid/content/res/TypedArray;
    new-instance v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v7}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 400
    .local v7, "mainTextAttrs":Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;
    new-instance v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v8}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 401
    .local v8, "headTextAttrs":Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;
    invoke-virtual {v7, v1, v4, v6}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 402
    const/16 v9, 0xc

    invoke-virtual {v8, v1, v4, v9}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 404
    const/4 v9, 0x0

    .line 405
    .local v9, "shadowcolor":I
    const/4 v10, 0x0

    .local v10, "dx":F
    const/4 v11, 0x0

    .local v11, "dy":F
    const/4 v12, 0x0

    .line 407
    .local v12, "r":F
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    .line 408
    .local v13, "n":I
    move v14, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v6

    .local v9, "i":I
    .local v10, "shadowcolor":I
    .local v11, "dx":F
    .local v12, "dy":F
    .local v14, "r":F
    :goto_0
    const/4 v15, 0x0

    if-ge v9, v13, :cond_0

    .line 409
    invoke-virtual {v4, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 411
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_0

    .line 408
    .end local v3
    move/from16 v16, v2

    .end local v2
    .local v16, "accentColor":I
    goto/16 :goto_1

    .line 464
    .end local v16
    .restart local v2
    .restart local v3
    :pswitch_0    # 0xb
    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    iput v15, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    .line 408
    .end local v3
    move/from16 v16, v2

    goto/16 :goto_1

    .line 449
    .restart local v3
    :pswitch_1    # 0xa
    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move/from16 v16, v2

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .end local v2
    .restart local v16
    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 457
    goto/16 :goto_1

    .line 460
    .end local v16
    .restart local v2
    :pswitch_2    # 0x9
    move/from16 v16, v2

    .end local v2
    .restart local v16
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    goto/16 :goto_1

    .line 425
    .end local v16
    .restart local v2
    :pswitch_3    # 0x8
    move/from16 v16, v2

    .end local v2
    .restart local v16
    invoke-virtual {v4, v3, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 426
    .end local v14
    .local v2, "r":F
    nop

    .line 408
    move v14, v2

    goto :goto_1

    .line 421
    .end local v16
    .local v2, "accentColor":I
    .restart local v14
    :pswitch_4    # 0x7
    move/from16 v16, v2

    .end local v2
    .restart local v16
    invoke-virtual {v4, v3, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 422
    .end local v12
    .local v2, "dy":F
    nop

    .line 408
    move v12, v2

    goto :goto_1

    .line 417
    .end local v16
    .local v2, "accentColor":I
    .restart local v12
    :pswitch_5    # 0x6
    move/from16 v16, v2

    .end local v2
    .restart local v16
    invoke-virtual {v4, v3, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 418
    .end local v11
    .local v2, "dx":F
    nop

    .line 408
    move v11, v2

    goto :goto_1

    .line 413
    .end local v16
    .local v2, "accentColor":I
    .restart local v11
    :pswitch_6    # 0x5
    move/from16 v16, v2

    .end local v2
    .restart local v16
    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 414
    .end local v10
    .local v2, "shadowcolor":I
    nop

    .line 408
    move v10, v2

    goto :goto_1

    .line 429
    .end local v16
    .local v2, "accentColor":I
    .restart local v10
    :pswitch_7    # 0x4
    move/from16 v16, v2

    .end local v2
    .restart local v16
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    .line 430
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    .line 431
    goto :goto_1

    .line 444
    .end local v16
    .restart local v2
    :pswitch_8    # 0x3
    move/from16 v16, v2

    .end local v2
    .restart local v16
    iget v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    .line 445
    iget v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    .line 446
    goto :goto_1

    .line 439
    .end local v16
    .restart local v2
    :pswitch_9    # 0x2
    move/from16 v16, v2

    .end local v2
    .restart local v16
    iget v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    .line 440
    iget v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    .line 441
    goto :goto_1

    .line 434
    .end local v16
    .restart local v2
    :pswitch_a    # 0x1
    move/from16 v16, v2

    .end local v2
    .restart local v16
    iget v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 435
    iget v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 436
    nop

    .line 408
    .end local v3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 469
    .end local v9
    .end local v16
    .restart local v2
    :cond_0
    move/from16 v16, v2

    .end local v2
    .restart local v16
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 471
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 472
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 474
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 475
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 476
    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    .line 477
    .local v2, "hairlineWidth":I
    const/4 v9, 0x1

    if-ge v2, v9, :cond_1

    .line 478
    const/4 v2, 0x1

    .line 480
    :cond_1
    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    int-to-float v15, v2

    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 481
    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    new-instance v15, Landroid/graphics/DashPathEffect;

    new-array v6, v3, [F

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/2addr v1, v3

    int-to-float v1, v1

    const/16 v17, 0x0

    aput v1, v6, v17

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/2addr v1, v3

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v6, v3

    const/4 v1, 0x0

    invoke-direct {v15, v6, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 484
    if-eqz v10, :cond_2

    .line 485
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v14, v11, v12, v10}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 486
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v14, v11, v12, v10}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 488
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a    # 0x1
        :pswitch_9    # 0x2
        :pswitch_8    # 0x3
        :pswitch_7    # 0x4
        :pswitch_6    # 0x5
        :pswitch_5    # 0x6
        :pswitch_4    # 0x7
        :pswitch_3    # 0x8
        :pswitch_2    # 0x9
        :pswitch_1    # 0xa
        :pswitch_0    # 0xb
    .end packed-switch
.end method

.method private is24Hour()Z
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isDayFirst()Z
    .locals 3

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 656
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method addDateLabel(Ljava/util/Calendar;IIZ)V
    .locals 11
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "isDayFirst"    # Z

    .line 1117
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1118
    .local v0, "walltimeStart":J
    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long/2addr v2, v0

    .line 1119
    .local v2, "walltimeChange":J
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1120
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    sub-int v9, p3, p2

    int-to-long v9, v9

    mul-long/2addr v7, v9

    div-long/2addr v7, v2

    long-to-int v7, v7

    add-int/2addr v7, p2

    invoke-direct {v5, v6, v7, p1, p4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    .line 1119
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    return-void
.end method

.method addTimeLabel(Ljava/util/Calendar;IIZ)V
    .locals 11
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "is24hr"    # Z

    .line 1108
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1109
    .local v0, "walltimeStart":J
    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long/2addr v2, v0

    .line 1110
    .local v2, "walltimeChange":J
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1111
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    sub-int v9, p3, p2

    int-to-long v9, v9

    mul-long/2addr v7, v9

    div-long/2addr v7, v2

    long-to-int v7, v7

    add-int/2addr v7, p2

    invoke-direct {v5, v6, v7, p1, p4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    .line 1110
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    return-void
.end method

.method drawChart(Landroid/graphics/Canvas;II)V
    .locals 33
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->isLayoutRtl()Z

    move-result v10

    .line 1154
    .local v10, "layoutRtl":Z
    if-eqz v10, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v12, v1

    .line 1155
    .local v12, "textStartX":I
    if-eqz v10, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, v8

    :goto_1
    move v13, v1

    .line 1156
    .local v13, "textEndX":I
    if-eqz v10, :cond_2

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_2

    :cond_2
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_2
    move-object v14, v1

    .line 1157
    .local v14, "textAlignLeft":Landroid/graphics/Paint$Align;
    if-eqz v10, :cond_3

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_3

    :cond_3
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_3
    move-object v15, v1

    .line 1164
    .local v15, "textAlignRight":Landroid/graphics/Paint$Align;
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1165
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1167
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1169
    :cond_4
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x1

    if-le v1, v6, :cond_c

    .line 1170
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v2, v2, 0x4

    add-int v5, v1, v2

    .line 1171
    .local v5, "y":I
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    .line 1172
    .local v4, "ytick":I
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1173
    const/4 v1, 0x0

    .line 1174
    .local v1, "lastX":I
    move/from16 v16, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v16, "lastX":I
    :goto_4
    move v3, v1

    .end local v1
    .local v3, "i":I
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_b

    .line 1175
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1176
    .local v2, "label":Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;
    if-nez v3, :cond_6

    .line 1177
    iget v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v6, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    .line 1178
    .local v1, "x":I
    if-gez v1, :cond_5

    .line 1179
    const/4 v1, 0x0

    .line 1182
    .end local v1
    .local v6, "x":I
    :cond_5
    move v6, v1

    iget-object v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    int-to-float v11, v6

    move/from16 v19, v3

    int-to-float v3, v5

    .end local v3
    .local v19, "i":I
    move/from16 v20, v5

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .end local v5
    .local v20, "y":I
    invoke-virtual {v7, v1, v11, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1183
    iget v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v1

    int-to-float v5, v4

    iget v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v11, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    move/from16 v21, v6

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .end local v6
    .local v21, "x":I
    move/from16 v22, v1

    move-object v1, v7

    move-object v9, v2

    move v2, v3

    .end local v2
    .local v9, "label":Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;
    move/from16 v23, v13

    move/from16 v13, v19

    move v3, v5

    .end local v19
    .local v13, "i":I
    .local v23, "textEndX":I
    move v5, v4

    move v4, v11

    .end local v4
    .local v5, "ytick":I
    move-object/from16 v24, v15

    move/from16 v11, v20

    move v15, v5

    move/from16 v5, v22

    .end local v5
    .end local v20
    .local v11, "y":I
    .local v15, "ytick":I
    .local v24, "textAlignRight":Landroid/graphics/Paint$Align;
    move/from16 v17, v21

    const/16 v19, 0x1

    .end local v21
    .local v17, "x":I
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1184
    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v6, v17, v1

    .line 1185
    .end local v16
    .end local v17
    .local v6, "lastX":I
    nop

    .line 1174
    .end local v6
    .end local v9
    .restart local v16
    :goto_5
    move/from16 v16, v6

    goto/16 :goto_6

    .line 1185
    .end local v11
    .end local v23
    .end local v24
    .restart local v2
    .restart local v3
    .restart local v4
    .local v5, "y":I
    .local v13, "textEndX":I
    .local v15, "textAlignRight":Landroid/graphics/Paint$Align;
    :cond_6
    move-object v9, v2

    move v11, v5

    move/from16 v19, v6

    move/from16 v23, v13

    move-object/from16 v24, v15

    move v13, v3

    move v15, v4

    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .restart local v9
    .restart local v11
    .local v13, "i":I
    .local v15, "ytick":I
    .restart local v23
    .restart local v24
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v13, v1, :cond_9

    .line 1186
    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v2, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v6, v1, v2

    .line 1187
    .local v6, "x":I
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int v1, v16, v1

    if-ge v6, v1, :cond_7

    .line 1188
    goto/16 :goto_6

    .line 1190
    :cond_7
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1191
    .local v5, "nextLabel":Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;
    iget v1, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v1, v8, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    if-le v6, v1, :cond_8

    .line 1192
    goto :goto_6

    .line 1195
    :cond_8
    iget-object v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    int-to-float v2, v6

    int-to-float v3, v11

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1196
    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v2, v1

    int-to-float v3, v15

    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v4, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v15

    int-to-float v1, v1

    move/from16 v25, v6

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .end local v6
    .local v25, "x":I
    move/from16 v17, v1

    move-object v1, v7

    move-object/from16 v20, v5

    move/from16 v5, v17

    .end local v5
    .local v20, "nextLabel":Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;
    move/from16 v17, v25

    .end local v25
    .restart local v17
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1197
    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v6, v17, v1

    .line 1198
    .end local v16
    .end local v17
    .end local v20
    .local v6, "lastX":I
    goto :goto_5

    .line 1199
    .end local v6
    .restart local v16
    :cond_9
    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v2, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1200
    .restart local v1
    iget v2, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int/2addr v2, v1

    if-lt v2, v8, :cond_a

    .line 1201
    add-int/lit8 v2, v8, -0x1

    iget v3, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v1, v2, v3

    .line 1204
    .end local v1
    .local v6, "x":I
    :cond_a
    move v6, v1

    iget-object v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    int-to-float v2, v6

    int-to-float v3, v11

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1205
    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v2, v1

    int-to-float v3, v15

    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v4, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v15

    int-to-float v5, v1

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v1

    move-object v1, v7

    move/from16 v20, v6

    move-object/from16 v6, v17

    .end local v6
    .local v20, "x":I
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1174
    .end local v9
    .end local v20
    :goto_6
    add-int/lit8 v1, v13, 0x1

    .end local v13
    .local v1, "i":I
    move v5, v11

    move v4, v15

    move/from16 v6, v19

    move/from16 v13, v23

    move-object/from16 v15, v24

    goto/16 :goto_4

    .line 1208
    .end local v1
    .end local v11
    .end local v16
    .end local v23
    .end local v24
    .local v13, "textEndX":I
    .local v15, "textAlignRight":Landroid/graphics/Paint$Align;
    :cond_b
    move/from16 v19, v6

    move/from16 v23, v13

    move-object/from16 v24, v15

    .end local v13
    .end local v15
    .restart local v23
    .restart local v24
    goto :goto_7

    .end local v23
    .end local v24
    .restart local v13
    .restart local v15
    :cond_c
    move/from16 v19, v6

    move/from16 v23, v13

    move-object/from16 v24, v15

    .end local v13
    .end local v15
    .restart local v23
    .restart local v24
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 1209
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 1210
    .local v1, "y":I
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1211
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v1

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1216
    .end local v1
    :cond_d
    :goto_7
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    neg-int v1, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    add-int v9, v1, v2

    .line 1217
    .local v9, "headerTop":I
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1219
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v12

    int-to-float v3, v9

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1221
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    div-int/lit8 v1, v1, 0x2

    .line 1222
    .local v1, "stringHalfWidth":I
    if-eqz v10, :cond_e

    neg-int v1, v1

    .line 1223
    .end local v1
    .local v11, "stringHalfWidth":I
    :cond_e
    move v11, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    sub-int v1, v8, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1224
    if-eqz v10, :cond_f

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    goto :goto_8

    :cond_f
    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    :goto_8
    add-int v13, v1, v2

    .line 1226
    .local v13, "headerCenter":I
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    sub-int v2, v13, v11

    int-to-float v2, v2

    int-to-float v3, v9

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1228
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v15, v24

    invoke-virtual {v1, v15}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1230
    .end local v24
    .restart local v15
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    move/from16 v6, v23

    int-to-float v2, v6

    .end local v23
    .local v6, "textEndX":I
    int-to-float v3, v9

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1232
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1234
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1236
    :cond_10
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1238
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1240
    :cond_11
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1242
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1244
    :cond_12
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_13

    .line 1246
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v1, p3, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1247
    .local v1, "top":I
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    invoke-virtual {v2, v7, v1, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    .line 1249
    .end local v1
    :cond_13
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1251
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1253
    :cond_14
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1255
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1257
    :cond_15
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v1, :cond_16

    .line 1258
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1260
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1263
    :cond_16
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v1, :cond_17

    .line 1264
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1266
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1269
    :cond_17
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v1, :cond_18

    .line 1270
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1272
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1275
    :cond_18
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v1, :cond_19

    .line 1276
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1278
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1281
    :cond_19
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1283
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1286
    :cond_1a
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v1, :cond_20

    .line 1288
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    .line 1289
    .local v1, "align":Landroid/graphics/Paint$Align;
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1290
    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1b

    .line 1291
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1294
    :cond_1b
    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_1c

    .line 1295
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1298
    :cond_1c
    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v2, :cond_1d

    .line 1299
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1302
    :cond_1d
    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v2, :cond_1e

    .line 1303
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1306
    :cond_1e
    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_1f

    .line 1307
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1310
    :cond_1f
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1312
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1314
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1316
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1319
    .end local v1
    :cond_20
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v1, v2

    int-to-float v2, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v3, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v1, v4

    int-to-float v4, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v1

    move-object v1, v7

    move/from16 v20, v6

    move-object/from16 v6, v17

    .end local v6
    .local v20, "textEndX":I
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1321
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v1, :cond_21

    .line 1322
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_9
    move/from16 v6, v18

    .end local v18
    .local v6, "i":I
    const/16 v1, 0xa

    if-ge v6, v1, :cond_21

    .line 1323
    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v6

    div-int/2addr v3, v1

    add-int v5, v2, v3

    .line 1324
    .local v5, "y":I
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    int-to-float v3, v5

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v1, v4

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    int-to-float v4, v1

    int-to-float v1, v5

    move/from16 v26, v6

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .end local v6
    .local v26, "i":I
    move/from16 v17, v1

    move-object v1, v7

    move/from16 v18, v5

    move/from16 v5, v17

    .end local v5
    .local v18, "y":I
    move/from16 v17, v26

    .end local v26
    .local v17, "i":I
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1322
    .end local v18
    add-int/lit8 v18, v17, 0x1

    .end local v17
    .local v18, "i":I
    goto :goto_9

    .line 1330
    .end local v18
    :cond_21
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1331
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1334
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    int-to-float v4, v8

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1337
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 1338
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int/2addr v1, v2

    .line 1339
    .local v1, "ytop":I
    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 1340
    .local v2, "ybottom":I
    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 1341
    .local v3, "lastLeft":I
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1342
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_a
    if-ltz v4, :cond_25

    .line 1343
    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;

    .line 1344
    .local v5, "label":Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;
    iget v6, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    iget v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v6, v8

    .line 1345
    .local v6, "left":I
    iget v8, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move/from16 v27, v6

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    .end local v6
    .local v27, "left":I
    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    .line 1346
    .local v8, "x":I
    iget v6, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    add-int/2addr v6, v8

    if-lt v6, v3, :cond_22

    .line 1347
    iget v6, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move/from16 v28, v8

    iget v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    .end local v8
    .local v28, "x":I
    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    iget v8, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    sub-int v8, v6, v8

    .line 1348
    .end local v28
    .restart local v8
    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v6, v8, v6

    .line 1349
    .end local v27
    .restart local v6
    if-lt v6, v3, :cond_23

    .line 1351
    nop

    .line 1342
    move/from16 v32, v1

    move/from16 v29, v3

    .end local v1
    .end local v3
    .end local v5
    .end local v6
    .end local v8
    .end local v9
    .local v29, "lastLeft":I
    .local v31, "headerTop":I
    .local v32, "ytop":I
    :goto_b
    move/from16 v31, v9

    goto :goto_c

    .line 1354
    .end local v29
    .end local v31
    .end local v32
    .restart local v1
    .restart local v3
    .restart local v5
    .restart local v8
    .restart local v9
    .restart local v27
    :cond_22
    move/from16 v28, v8

    move/from16 v6, v27

    .end local v27
    .restart local v6
    :cond_23
    move/from16 v29, v3

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .end local v3
    .restart local v29
    if-ge v6, v3, :cond_24

    .line 1356
    nop

    .line 1342
    move/from16 v32, v1

    goto :goto_b

    .line 1358
    :cond_24
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1359
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    move/from16 v30, v6

    iget v6, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    .end local v6
    .local v30, "left":I
    int-to-float v6, v6

    move/from16 v31, v9

    int-to-float v9, v1

    .end local v9
    .restart local v31
    invoke-virtual {v3, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1360
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v6, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v6, v6

    int-to-float v9, v2

    invoke-virtual {v3, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1361
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1362
    iget-object v3, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    int-to-float v6, v8

    iget v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v9, v1, v9

    int-to-float v9, v9

    move/from16 v32, v1

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .end local v1
    .restart local v32
    invoke-virtual {v7, v3, v6, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1342
    .end local v5
    .end local v8
    .end local v30
    :goto_c
    add-int/lit8 v4, v4, -0x1

    move/from16 v3, v29

    move/from16 v9, v31

    move/from16 v1, v32

    move/from16 v8, p2

    goto/16 :goto_a

    .line 1365
    .end local v2
    .end local v4
    .end local v29
    .end local v31
    .end local v32
    .restart local v9
    :cond_25
    move/from16 v31, v9

    .end local v9
    .restart local v31
    return-void
.end method

.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V
    .locals 16
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "levelh"    # I
    .param p4, "startX"    # I
    .param p5, "y"    # I
    .param p6, "curLevelPath"    # Landroid/graphics/Path;
    .param p7, "lastX"    # I
    .param p8, "lastCharging"    # Z
    .param p9, "lastScreenOn"    # Z
    .param p10, "lastGpsOn"    # Z
    .param p11, "lastFlashlightOn"    # Z
    .param p12, "lastCameraOn"    # Z
    .param p13, "lastWifiRunning"    # Z
    .param p14, "lastCpuRunning"    # Z
    .param p15, "lastPath"    # Landroid/graphics/Path;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    .line 612
    move-object/from16 v6, p15

    if-eqz v4, :cond_2

    .line 613
    if-ltz v5, :cond_1

    if-ge v5, v1, :cond_1

    .line 614
    if-eqz v6, :cond_0

    .line 615
    int-to-float v7, v1

    int-to-float v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 617
    :cond_0
    int-to-float v7, v1

    int-to-float v8, v3

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 619
    :cond_1
    int-to-float v7, v1

    iget v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v8, v8, p3

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 620
    move/from16 v7, p4

    int-to-float v8, v7

    iget v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v9, v9, p3

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 621
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 624
    :cond_2
    move/from16 v7, p4

    :goto_0
    if-eqz p8, :cond_3

    .line 625
    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v10, v1

    iget v11, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v11, p2, v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 627
    :cond_3
    if-eqz p9, :cond_4

    .line 628
    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v11, v1

    iget v12, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v12, p2, v12

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 630
    :cond_4
    if-eqz p10, :cond_5

    .line 631
    iget-object v11, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v12, v1

    iget v13, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v13, p2, v13

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 633
    :cond_5
    if-eqz p11, :cond_6

    .line 634
    iget-object v12, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v13, v1

    iget v14, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v14, p2, v14

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 636
    :cond_6
    if-eqz p12, :cond_7

    .line 637
    iget-object v13, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v14, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v13, v14, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 639
    :cond_7
    if-eqz p13, :cond_8

    .line 640
    iget-object v13, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v14, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v13, v14, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 642
    :cond_8
    if-eqz p14, :cond_9

    .line 643
    iget-object v13, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v14, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v13, v14, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 645
    :cond_9
    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_a

    .line 646
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v2, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    .line 648
    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1127
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1129
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v0

    .line 1130
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v1

    .line 1136
    .local v1, "height":I
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    .line 1137
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 592
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    .line 593
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    .line 594
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    .line 595
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    .line 596
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    .line 597
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    .line 598
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    .line 599
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    .line 600
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    .line 601
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    .line 602
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int/2addr v0, v1

    .line 603
    .local v0, "headerTextHeight":I
    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    add-int/2addr v2, v3

    .line 605
    invoke-static {v2, p2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v2

    .line 604
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setMeasuredDimension(II)V

    .line 606
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 85
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v13, p2

    .line 662
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 666
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    if-ne v0, v14, :cond_0

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    if-ne v0, v13, :cond_0

    .line 667
    return-void

    .line 670
    :cond_0
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    if-eqz v0, :cond_4b

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    if-nez v0, :cond_1

    goto/16 :goto_3a

    .line 676
    :cond_1
    iput v14, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 677
    iput v13, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 678
    const/4 v12, 0x0

    iput-object v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 679
    iput-object v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 681
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v16, v0, v1

    .line 682
    .local v16, "textHeight":I
    mul-int/lit8 v0, v16, 0xa

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    add-int/2addr v0, v1

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-le v13, v0, :cond_3

    .line 683
    iput-boolean v11, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 684
    mul-int/lit8 v0, v16, 0xf

    if-le v13, v0, :cond_2

    .line 686
    div-int/lit8 v0, v16, 0x2

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto :goto_0

    .line 689
    :cond_2
    div-int/lit8 v0, v16, 0x3

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto :goto_0

    .line 692
    :cond_3
    iput-boolean v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 693
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 695
    :goto_0
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v0, :cond_4

    iput v11, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 697
    :cond_4
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 698
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    const/4 v9, 0x3

    mul-int/2addr v1, v9

    add-int/2addr v0, v1

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 699
    iput v14, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 700
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int v8, v0, v1

    .line 702
    .local v8, "levelWidth":I
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 703
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 704
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 705
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 706
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 707
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 708
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 709
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 710
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 711
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 712
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 713
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 715
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v17, v16, v0

    .line 717
    .local v17, "fullBarOffset":I
    iget-boolean v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    const/4 v7, 0x2

    if-eqz v0, :cond_a

    .line 718
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 719
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int v0, v0, v17

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 720
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int v0, v0, v17

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    .line 721
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    add-int v0, v0, v17

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 722
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    iget-boolean v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v1, :cond_5

    move/from16 v1, v17

    goto :goto_1

    :cond_5
    move v1, v10

    :goto_1
    add-int/2addr v0, v1

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 723
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    iget-boolean v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v1, :cond_6

    move/from16 v1, v17

    goto :goto_2

    :cond_6
    move v1, v10

    :goto_2
    add-int/2addr v0, v1

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    .line 724
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    iget-boolean v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v1, :cond_7

    move/from16 v1, v17

    goto :goto_3

    :cond_7
    move v1, v10

    :goto_3
    add-int/2addr v0, v1

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    .line 725
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    iget-boolean v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v1, :cond_8

    move/from16 v1, v17

    goto :goto_4

    :cond_8
    move v1, v10

    :goto_4
    add-int/2addr v0, v1

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 726
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    iget-boolean v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_9

    move/from16 v1, v17

    goto :goto_5

    :cond_9
    move v1, v10

    :goto_5
    add-int/2addr v0, v1

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/2addr v1, v7

    add-int/2addr v0, v1

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/2addr v1, v7

    add-int/2addr v0, v1

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 728
    iget-boolean v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_b

    .line 729
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v0, v14}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto :goto_6

    .line 732
    :cond_a
    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 735
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v0, v0, 0x4

    add-int v0, v17, v0

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 736
    iget-boolean v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_b

    .line 737
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v0, v10}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 741
    :cond_b
    :goto_6
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 742
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 743
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 744
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 745
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 746
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 747
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 748
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 749
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 750
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 751
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 752
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 754
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 755
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 757
    iget-wide v5, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 758
    .local v5, "walltimeStart":J
    iget-wide v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_c

    .line 759
    iget-wide v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long/2addr v0, v5

    goto :goto_7

    :cond_c
    const-wide/16 v0, 0x1

    :goto_7
    move-wide/from16 v18, v0

    .line 760
    .local v18, "walltimeChange":J
    iget-wide v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 761
    .local v0, "curWalltime":J
    const-wide/16 v2, 0x0

    .line 763
    .local v2, "lastRealtime":J
    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    .line 764
    .local v4, "batLow":I
    iget v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    iget v7, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v22, v12, v7

    .line 766
    .local v22, "batChange":I
    iget v7, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v7, v13, v7

    iget v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v23, v7, v12

    .line 767
    .local v23, "levelh":I
    iget v7, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v7, v7, v23

    iput v7, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 769
    iget v7, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v7, "x":I
    const/4 v12, 0x0

    .local v12, "y":I
    iget v9, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v9, "startX":I
    const/16 v25, -0x1

    .local v25, "lastX":I
    const/16 v26, -0x1

    .line 770
    .local v26, "lastY":I
    const/16 v27, 0x0

    .line 771
    .local v27, "i":I
    const/16 v28, 0x0

    .line 772
    .local v28, "curLevelPath":Landroid/graphics/Path;
    const/16 v29, 0x0

    .line 773
    .local v29, "lastLinePath":Landroid/graphics/Path;
    const/16 v30, 0x0

    .local v30, "lastCharging":Z
    const/16 v31, 0x0

    .local v31, "lastScreenOn":Z
    const/16 v32, 0x0

    .line 774
    .local v32, "lastGpsOn":Z
    const/16 v33, 0x0

    .local v33, "lastFlashlightOn":Z
    const/16 v34, 0x0

    .line 775
    .local v34, "lastCameraOn":Z
    const/16 v35, 0x0

    .local v35, "lastWifiRunning":Z
    const/16 v36, 0x0

    .local v36, "lastWifiSupplRunning":Z
    const/16 v37, 0x0

    .line 776
    .local v37, "lastCpuRunning":Z
    const/16 v38, 0x0

    .line 777
    .local v38, "lastWifiSupplState":I
    iget v11, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    .line 778
    .local v11, "N":I
    move/from16 v41, v11

    iget-wide v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .end local v11
    .local v41, "N":I
    move-wide/from16 v42, v0

    iget-wide v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .end local v0
    .local v42, "curWalltime":J
    cmp-long v0, v10, v0

    if-lez v0, :cond_39

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 779
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move/from16 v10, v25

    move/from16 v1, v31

    move/from16 v11, v32

    move/from16 v14, v33

    move/from16 v45, v34

    move/from16 v46, v35

    move/from16 v47, v37

    move/from16 v48, v38

    move/from16 v25, v7

    move-object/from16 v7, v29

    move/from16 v82, v27

    move/from16 v27, v9

    move/from16 v9, v26

    move/from16 v26, v12

    move/from16 v12, v82

    move-wide/from16 v83, v2

    move-object/from16 v3, v28

    move-wide/from16 v28, v83

    move/from16 v2, v30

    .line 780
    .end local v29
    .end local v30
    .end local v31
    .end local v32
    .end local v33
    .end local v34
    .end local v35
    .end local v37
    .end local v38
    .local v0, "rec":Landroid/os/BatteryStats$HistoryItem;
    .local v1, "lastScreenOn":Z
    .local v2, "lastCharging":Z
    .local v3, "curLevelPath":Landroid/graphics/Path;
    .local v7, "lastLinePath":Landroid/graphics/Path;
    .local v9, "lastY":I
    .local v10, "lastX":I
    .local v11, "lastGpsOn":Z
    .local v12, "i":I
    .local v14, "lastFlashlightOn":Z
    .local v25, "x":I
    .local v26, "y":I
    .local v27, "startX":I
    .local v28, "lastRealtime":J
    .local v45, "lastCameraOn":Z
    .local v46, "lastWifiRunning":Z
    .local v47, "lastCpuRunning":Z
    .local v48, "lastWifiSupplState":I
    :goto_8
    move/from16 v49, v14

    iget-object v14, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    .end local v14
    .local v49, "lastFlashlightOn":Z
    invoke-virtual {v14, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v14

    if-eqz v14, :cond_38

    move/from16 v14, v41

    if-ge v12, v14, :cond_37

    .line 781
    .end local v41
    .local v14, "N":I
    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v30

    if-eqz v30, :cond_30

    .line 782
    move/from16 v51, v11

    move/from16 v50, v12

    iget-wide v11, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .end local v11
    .end local v12
    .local v50, "i":I
    .local v51, "lastGpsOn":Z
    sub-long v11, v11, v28

    add-long v42, v42, v11

    .line 783
    iget-wide v11, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 784
    .end local v28
    .local v11, "lastRealtime":J
    move-wide/from16 v52, v11

    iget v11, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .end local v11
    .local v52, "lastRealtime":J
    sub-long v28, v42, v5

    move-wide/from16 v54, v5

    int-to-long v5, v8

    .end local v5
    .local v54, "walltimeStart":J
    mul-long v28, v28, v5

    div-long v5, v28, v18

    long-to-int v5, v5

    add-int/2addr v11, v5

    .line 785
    .end local v25
    .local v11, "x":I
    if-gez v11, :cond_d

    .line 786
    const/4 v5, 0x0

    .line 798
    .end local v11
    .local v5, "x":I
    move v11, v5

    .end local v5
    .restart local v11
    :cond_d
    iget v5, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v5, v5, v23

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int/2addr v6, v4

    add-int/lit8 v12, v23, -0x1

    mul-int/2addr v6, v12

    div-int v6, v6, v22

    sub-int/2addr v5, v6

    .line 800
    .end local v26
    .local v5, "y":I
    if-eq v10, v11, :cond_15

    .line 802
    if-eq v9, v5, :cond_15

    .line 805
    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 806
    .local v6, "value":B
    iget v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    if-gt v6, v12, :cond_e

    iget-object v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .local v12, "path":Landroid/graphics/Path;
    :goto_9
    goto :goto_a

    .line 807
    .end local v12
    :cond_e
    iget v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    if-gt v6, v12, :cond_f

    iget-object v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    goto :goto_9

    .line 808
    :cond_f
    const/4 v12, 0x0

    .line 810
    .restart local v12
    :goto_a
    if-eq v12, v7, :cond_12

    .line 811
    if-eqz v7, :cond_10

    .line 812
    move/from16 v56, v4

    int-to-float v4, v11

    .end local v4
    .local v56, "batLow":I
    move/from16 v57, v6

    int-to-float v6, v5

    .end local v6
    .local v57, "value":B
    invoke-virtual {v7, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_b

    .line 814
    .end local v56
    .end local v57
    .restart local v4
    .restart local v6
    :cond_10
    move/from16 v56, v4

    move/from16 v57, v6

    .end local v4
    .end local v6
    .restart local v56
    .restart local v57
    :goto_b
    if-eqz v12, :cond_11

    .line 815
    int-to-float v4, v11

    int-to-float v6, v5

    invoke-virtual {v12, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 817
    :cond_11
    move-object v4, v12

    .line 822
    .end local v7
    .local v4, "lastLinePath":Landroid/graphics/Path;
    move-object v7, v4

    goto :goto_c

    .line 818
    .end local v56
    .end local v57
    .local v4, "batLow":I
    .restart local v6
    .restart local v7
    :cond_12
    move/from16 v56, v4

    move/from16 v57, v6

    .end local v4
    .end local v6
    .restart local v56
    .restart local v57
    if-eqz v12, :cond_13

    .line 819
    int-to-float v4, v11

    int-to-float v6, v5

    invoke-virtual {v12, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 822
    :cond_13
    :goto_c
    if-nez v3, :cond_14

    .line 823
    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 824
    int-to-float v4, v11

    int-to-float v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 825
    move v4, v11

    .line 829
    .end local v27
    .local v4, "startX":I
    move/from16 v27, v4

    goto :goto_d

    .line 827
    .end local v4
    .restart local v27
    :cond_14
    int-to-float v4, v11

    int-to-float v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 829
    :goto_d
    move v10, v11

    .line 830
    move v9, v5

    .end local v12
    .end local v57
    goto :goto_e

    .line 834
    .end local v56
    .local v4, "batLow":I
    :cond_15
    move/from16 v56, v4

    .end local v4
    .restart local v56
    :goto_e
    iget-boolean v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_2f

    .line 835
    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    goto :goto_f

    :cond_16
    const/4 v4, 0x0

    .line 837
    .local v4, "charging":Z
    :goto_f
    if-eq v4, v2, :cond_18

    .line 838
    if-eqz v4, :cond_17

    .line 839
    iget-object v6, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v12, v11

    move/from16 v58, v2

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .end local v2
    .local v58, "lastCharging":Z
    sub-int v2, v13, v2

    int-to-float v2, v2

    invoke-virtual {v6, v12, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_10

    .line 841
    .end local v58
    .restart local v2
    :cond_17
    move/from16 v58, v2

    .end local v2
    .restart local v58
    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v11

    iget v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v12, v13, v12

    int-to-float v12, v12

    invoke-virtual {v2, v6, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 843
    :goto_10
    move v2, v4

    .end local v58
    .restart local v2
    goto :goto_11

    .line 846
    :cond_18
    move/from16 v58, v2

    :goto_11
    iget v6, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v12, 0x100000

    and-int/2addr v6, v12

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    goto :goto_12

    :cond_19
    const/4 v6, 0x0

    .line 848
    .local v6, "screenOn":Z
    :goto_12
    if-eq v6, v1, :cond_1b

    .line 849
    if-eqz v6, :cond_1a

    .line 850
    iget-object v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v59, v1

    int-to-float v1, v11

    .end local v1
    .local v59, "lastScreenOn":Z
    move/from16 v60, v2

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .end local v2
    .local v60, "lastCharging":Z
    sub-int v2, v13, v2

    int-to-float v2, v2

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_13

    .line 852
    .end local v59
    .end local v60
    .restart local v1
    .restart local v2
    :cond_1a
    move/from16 v59, v1

    move/from16 v60, v2

    .end local v1
    .end local v2
    .restart local v59
    .restart local v60
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v2, v11

    iget v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v12, v13, v12

    int-to-float v12, v12

    invoke-virtual {v1, v2, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 854
    :goto_13
    move v1, v6

    .end local v59
    .restart local v1
    goto :goto_14

    .line 857
    .end local v60
    .restart local v2
    :cond_1b
    move/from16 v59, v1

    move/from16 v60, v2

    .end local v2
    .restart local v60
    :goto_14
    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v12, 0x20000000

    and-int/2addr v2, v12

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_15

    :cond_1c
    const/4 v2, 0x0

    .line 859
    .local v2, "gpsOn":Z
    :goto_15
    move/from16 v12, v51

    if-eq v2, v12, :cond_1e

    .line 860
    .end local v51
    .local v12, "lastGpsOn":Z
    if-eqz v2, :cond_1d

    .line 861
    move/from16 v61, v1

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    .end local v1
    .local v61, "lastScreenOn":Z
    move-object/from16 v62, v3

    int-to-float v3, v11

    .end local v3
    .local v62, "curLevelPath":Landroid/graphics/Path;
    move/from16 v63, v4

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .end local v4
    .local v63, "charging":Z
    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_16

    .line 863
    .end local v61
    .end local v62
    .end local v63
    .restart local v1
    .restart local v3
    .restart local v4
    :cond_1d
    move/from16 v61, v1

    move-object/from16 v62, v3

    move/from16 v63, v4

    .end local v1
    .end local v3
    .end local v4
    .restart local v61
    .restart local v62
    .restart local v63
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v3, v11

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 865
    :goto_16
    move v1, v2

    .line 868
    .end local v12
    .local v1, "lastGpsOn":Z
    move v12, v1

    goto :goto_17

    .end local v61
    .end local v62
    .end local v63
    .local v1, "lastScreenOn":Z
    .restart local v3
    .restart local v4
    .restart local v12
    :cond_1e
    move/from16 v61, v1

    move-object/from16 v62, v3

    move/from16 v63, v4

    .end local v1
    .end local v3
    .end local v4
    .restart local v61
    .restart local v62
    .restart local v63
    :goto_17
    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v3, 0x8000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_18

    :cond_1f
    const/4 v1, 0x0

    .line 870
    .local v1, "flashlightOn":Z
    :goto_18
    move/from16 v4, v49

    if-eq v1, v4, :cond_21

    .line 871
    .end local v49
    .local v4, "lastFlashlightOn":Z
    if-eqz v1, :cond_20

    .line 872
    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    move/from16 v64, v2

    int-to-float v2, v11

    .end local v2
    .local v64, "gpsOn":Z
    move/from16 v65, v4

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    .end local v4
    .local v65, "lastFlashlightOn":Z
    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_19

    .line 874
    .end local v64
    .end local v65
    .restart local v2
    .restart local v4
    :cond_20
    move/from16 v64, v2

    move/from16 v65, v4

    .end local v2
    .end local v4
    .restart local v64
    .restart local v65
    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v3, v11

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 876
    :goto_19
    move v2, v1

    .line 879
    .end local v65
    .local v2, "lastFlashlightOn":Z
    move/from16 v65, v2

    goto :goto_1a

    .end local v64
    .local v2, "gpsOn":Z
    .restart local v4
    :cond_21
    move/from16 v64, v2

    move/from16 v65, v4

    .end local v2
    .end local v4
    .restart local v64
    .restart local v65
    :goto_1a
    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    goto :goto_1b

    :cond_22
    const/4 v2, 0x0

    .line 881
    .local v2, "cameraOn":Z
    :goto_1b
    move/from16 v4, v45

    if-eq v2, v4, :cond_24

    .line 882
    .end local v45
    .local v4, "lastCameraOn":Z
    if-eqz v2, :cond_23

    .line 883
    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    move/from16 v66, v1

    int-to-float v1, v11

    .end local v1
    .local v66, "flashlightOn":Z
    move/from16 v67, v4

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    .end local v4
    .local v67, "lastCameraOn":Z
    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1c

    .line 885
    .end local v66
    .end local v67
    .restart local v1
    .restart local v4
    :cond_23
    move/from16 v66, v1

    move/from16 v67, v4

    .end local v1
    .end local v4
    .restart local v66
    .restart local v67
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v3, v11

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 887
    :goto_1c
    move v1, v2

    .line 890
    .end local v67
    .local v1, "lastCameraOn":Z
    move/from16 v45, v1

    goto :goto_1d

    .end local v66
    .local v1, "flashlightOn":Z
    .restart local v4
    :cond_24
    move/from16 v66, v1

    move/from16 v67, v4

    move/from16 v45, v67

    .end local v1
    .end local v4
    .restart local v45
    .restart local v66
    :goto_1d
    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v1, v1, 0xf

    const/4 v3, 0x0

    shr-int/2addr v1, v3

    .line 894
    .local v1, "wifiSupplState":I
    move/from16 v4, v48

    if-eq v4, v1, :cond_25

    .line 895
    .end local v48
    .local v4, "lastWifiSupplState":I
    move v3, v1

    .line 896
    .end local v4
    .local v3, "lastWifiSupplState":I
    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 906
    const/16 v30, 0x1

    move/from16 v4, v30

    .end local v36
    .local v4, "lastWifiSupplRunning":Z
    move/from16 v36, v30

    .line 907
    .local v36, "wifiRunning":Z
    nop

    .line 910
    move/from16 v48, v3

    const/16 v31, 0x0

    goto :goto_1e

    .line 903
    .end local v4
    .local v36, "lastWifiSupplRunning":Z
    :pswitch_0    # 0x3 0xb 0xc 0x2 0x1 0x0
    const/16 v30, 0x1

    const/16 v31, 0x0

    move/from16 v4, v31

    .end local v36
    .restart local v4
    move/from16 v36, v31

    .line 904
    .local v36, "wifiRunning":Z
    nop

    .line 910
    move/from16 v48, v3

    goto :goto_1e

    .end local v3
    .local v4, "lastWifiSupplState":I
    .local v36, "lastWifiSupplRunning":Z
    :cond_25
    const/16 v30, 0x1

    const/16 v31, 0x0

    move/from16 v48, v4

    move/from16 v4, v36

    .local v4, "lastWifiSupplRunning":Z
    .local v36, "wifiRunning":Z
    .restart local v48
    :goto_1e
    move/from16 v3, v36

    .line 912
    .end local v36
    .local v3, "wifiRunning":Z
    move/from16 v68, v1

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .end local v1
    .local v68, "wifiSupplState":I
    const/high16 v25, 0x18010000

    and-int v1, v1, v25

    if-eqz v1, :cond_26

    .line 915
    const/4 v3, 0x1

    .line 917
    :cond_26
    move/from16 v1, v46

    if-eq v3, v1, :cond_28

    .line 918
    .end local v46
    .local v1, "lastWifiRunning":Z
    if-eqz v3, :cond_27

    .line 919
    move/from16 v69, v1

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .end local v1
    .local v69, "lastWifiRunning":Z
    move/from16 v70, v2

    int-to-float v2, v11

    .end local v2
    .local v70, "cameraOn":Z
    move/from16 v71, v4

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .end local v4
    .local v71, "lastWifiSupplRunning":Z
    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1f

    .line 921
    .end local v69
    .end local v70
    .end local v71
    .restart local v1
    .restart local v2
    .restart local v4
    :cond_27
    move/from16 v69, v1

    move/from16 v70, v2

    move/from16 v71, v4

    .end local v1
    .end local v2
    .end local v4
    .restart local v69
    .restart local v70
    .restart local v71
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, v11

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 923
    :goto_1f
    move v1, v3

    .line 926
    .end local v69
    .restart local v1
    move/from16 v46, v1

    goto :goto_20

    .end local v70
    .end local v71
    .restart local v2
    .restart local v4
    :cond_28
    move/from16 v69, v1

    move/from16 v70, v2

    move/from16 v71, v4

    move/from16 v46, v69

    .end local v1
    .end local v2
    .end local v4
    .restart local v46
    .restart local v70
    .restart local v71
    :goto_20
    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_29

    move/from16 v1, v30

    goto :goto_21

    :cond_29
    move/from16 v1, v31

    .line 928
    .local v1, "cpuRunning":Z
    :goto_21
    move/from16 v2, v47

    if-eq v1, v2, :cond_2b

    .line 929
    .end local v47
    .local v2, "lastCpuRunning":Z
    if-eqz v1, :cond_2a

    .line 930
    iget-object v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    move/from16 v72, v2

    int-to-float v2, v11

    .end local v2
    .local v72, "lastCpuRunning":Z
    move/from16 v73, v3

    iget v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    .end local v3
    .local v73, "wifiRunning":Z
    sub-int v3, v13, v3

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_22

    .line 932
    .end local v72
    .end local v73
    .restart local v2
    .restart local v3
    :cond_2a
    move/from16 v72, v2

    move/from16 v73, v3

    .end local v2
    .end local v3
    .restart local v72
    .restart local v73
    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v3, v11

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 934
    :goto_22
    move v2, v1

    .line 937
    .end local v72
    .restart local v2
    move/from16 v47, v2

    goto :goto_23

    .end local v73
    .restart local v3
    :cond_2b
    move/from16 v72, v2

    move/from16 v73, v3

    move/from16 v47, v72

    .end local v2
    .end local v3
    .restart local v47
    .restart local v73
    :goto_23
    iget-boolean v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_2e

    iget-boolean v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_2e

    .line 939
    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v2, v2, 0x1c0

    const/4 v3, 0x6

    shr-int/2addr v2, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2c

    .line 942
    const/4 v2, 0x0

    .line 950
    .local v2, "bin":I
    :goto_24
    const/16 v21, 0x2

    const/16 v24, 0x3

    goto :goto_25

    .line 943
    .end local v2
    :cond_2c
    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2d

    .line 944
    const/4 v2, 0x1

    goto :goto_24

    .line 946
    :cond_2d
    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v2, v2, 0x38

    const/16 v24, 0x3

    shr-int/lit8 v2, v2, 0x3

    .line 948
    .restart local v2
    const/16 v21, 0x2

    add-int/lit8 v2, v2, 0x2

    .line 950
    :goto_25
    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v3, v11, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .end local v1
    .end local v2
    .end local v6
    .end local v63
    .end local v64
    .end local v66
    .end local v68
    .end local v70
    .end local v73
    goto :goto_26

    .line 952
    :cond_2e
    const/16 v21, 0x2

    const/16 v24, 0x3

    .line 982
    :goto_26
    move-object/from16 v34, v0

    move/from16 v26, v5

    move/from16 v76, v8

    move/from16 v25, v11

    move v11, v12

    move/from16 v51, v14

    move/from16 v49, v24

    move/from16 v77, v31

    move/from16 v72, v47

    move/from16 v4, v48

    move/from16 v20, v50

    move-wide/from16 v28, v52

    move-wide/from16 v47, v54

    move/from16 v41, v56

    move/from16 v2, v60

    move/from16 v1, v61

    move-object/from16 v3, v62

    move/from16 v14, v65

    move/from16 v36, v71

    goto/16 :goto_2d

    .end local v12
    .end local v60
    .end local v61
    .end local v62
    .end local v65
    .end local v71
    .local v1, "lastScreenOn":Z
    .local v2, "lastCharging":Z
    .local v3, "curLevelPath":Landroid/graphics/Path;
    .local v36, "lastWifiSupplRunning":Z
    .restart local v49
    .restart local v51
    :cond_2f
    move/from16 v59, v1

    move/from16 v58, v2

    move-object/from16 v62, v3

    move/from16 v67, v45

    move/from16 v69, v46

    move/from16 v72, v47

    move/from16 v4, v48

    move/from16 v65, v49

    move/from16 v12, v51

    const/16 v21, 0x2

    const/16 v24, 0x3

    move-object/from16 v34, v0

    move/from16 v26, v5

    move/from16 v76, v8

    move/from16 v25, v11

    move v11, v12

    move/from16 v51, v14

    move/from16 v49, v24

    move/from16 v20, v50

    move-wide/from16 v28, v52

    move-wide/from16 v47, v54

    move/from16 v41, v56

    move/from16 v14, v65

    const/16 v77, 0x0

    .end local v1
    .end local v2
    .end local v3
    .end local v45
    .end local v46
    .end local v47
    .end local v48
    .end local v49
    .end local v51
    .local v4, "lastWifiSupplState":I
    .restart local v12
    .restart local v58
    .restart local v59
    .restart local v62
    .restart local v65
    .restart local v67
    .restart local v69
    .restart local v72
    goto/16 :goto_2d

    .line 955
    .end local v50
    .end local v52
    .end local v54
    .end local v56
    .end local v58
    .end local v59
    .end local v62
    .end local v65
    .end local v67
    .end local v69
    .end local v72
    .restart local v1
    .restart local v2
    .restart local v3
    .local v4, "batLow":I
    .local v5, "walltimeStart":J
    .local v11, "lastGpsOn":Z
    .local v12, "i":I
    .restart local v25
    .restart local v26
    .restart local v28
    .restart local v45
    .restart local v46
    .restart local v47
    .restart local v48
    .restart local v49
    :cond_30
    move/from16 v59, v1

    move/from16 v58, v2

    move/from16 v56, v4

    move-wide/from16 v54, v5

    move/from16 v50, v12

    move/from16 v67, v45

    move/from16 v69, v46

    move/from16 v72, v47

    move/from16 v4, v48

    move/from16 v65, v49

    const/16 v21, 0x2

    const/16 v24, 0x3

    const/16 v30, 0x1

    const/16 v31, 0x0

    move v12, v11

    .end local v1
    .end local v2
    .end local v5
    .end local v11
    .end local v45
    .end local v46
    .end local v47
    .end local v48
    .end local v49
    .local v4, "lastWifiSupplState":I
    .local v12, "lastGpsOn":Z
    .restart local v50
    .restart local v54
    .restart local v56
    .restart local v58
    .restart local v59
    .restart local v65
    .restart local v67
    .restart local v69
    .restart local v72
    move-wide/from16 v32, v42

    .line 956
    .local v32, "lastWalltime":J
    iget-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_32

    iget-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-ne v1, v5, :cond_31

    goto :goto_27

    .line 966
    :cond_31
    move-object/from16 v74, v3

    move/from16 v75, v4

    goto :goto_29

    .line 958
    :cond_32
    :goto_27
    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-object/from16 v74, v3

    iget-wide v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .end local v3
    .local v74, "curLevelPath":Landroid/graphics/Path;
    cmp-long v1, v5, v2

    if-ltz v1, :cond_33

    .line 959
    iget-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 963
    .end local v42
    .local v1, "curWalltime":J
    move-wide/from16 v42, v1

    move/from16 v75, v4

    goto :goto_28

    .line 961
    .end local v1
    .restart local v42
    :cond_33
    iget-wide v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move/from16 v75, v4

    iget-wide v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .end local v4
    .local v75, "lastWifiSupplState":I
    sub-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 963
    .end local v42
    .restart local v1
    move-wide/from16 v42, v1

    .end local v1
    .restart local v42
    :goto_28
    iget-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 966
    .end local v28
    .local v1, "lastRealtime":J
    move-wide/from16 v28, v1

    .end local v1
    .restart local v28
    :goto_29
    iget-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v11, 0x6

    if-eq v1, v11, :cond_36

    iget-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-ne v1, v2, :cond_35

    sub-long v1, v32, v42

    .line 968
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    cmp-long v1, v1, v3

    if-lez v1, :cond_34

    goto :goto_2a

    .line 982
    .end local v32
    :cond_34
    move-object/from16 v34, v0

    move-object/from16 v21, v7

    move/from16 v76, v8

    move/from16 v30, v12

    move/from16 v51, v14

    move/from16 v49, v24

    move/from16 v77, v31

    move/from16 v20, v50

    move-wide/from16 v47, v54

    move/from16 v41, v56

    move/from16 v38, v58

    move/from16 v35, v59

    move/from16 v44, v65

    move/from16 v45, v67

    move/from16 v37, v69

    move/from16 v39, v72

    move-object/from16 v40, v74

    move/from16 v46, v75

    move/from16 v24, v9

    move/from16 v31, v10

    goto/16 :goto_2b

    .line 969
    .restart local v32
    :cond_35
    :goto_2a
    if-eqz v74, :cond_36

    .line 970
    add-int/lit8 v1, v25, 0x1

    move-object/from16 v34, v0

    move-object v0, v15

    .end local v0
    .local v34, "rec":Landroid/os/BatteryStats$HistoryItem;
    move/from16 v35, v59

    move/from16 v37, v69

    .end local v59
    .end local v69
    .local v35, "lastScreenOn":Z
    .local v37, "lastWifiRunning":Z
    move/from16 v38, v58

    move/from16 v39, v72

    move v2, v13

    .end local v58
    .end local v72
    .local v38, "lastCharging":Z
    .local v39, "lastCpuRunning":Z
    move-object/from16 v40, v74

    move/from16 v3, v23

    .end local v74
    .local v40, "curLevelPath":Landroid/graphics/Path;
    move/from16 v41, v56

    move/from16 v44, v65

    move/from16 v45, v67

    move/from16 v46, v75

    move/from16 v4, v27

    .end local v56
    .end local v65
    .end local v67
    .end local v75
    .local v41, "batLow":I
    .local v44, "lastFlashlightOn":Z
    .restart local v45
    .local v46, "lastWifiSupplState":I
    move-wide/from16 v47, v54

    move v5, v9

    .end local v54
    .local v47, "walltimeStart":J
    move-object/from16 v6, v40

    move-object/from16 v21, v7

    move v7, v10

    .end local v7
    .local v21, "lastLinePath":Landroid/graphics/Path;
    move/from16 v76, v8

    move/from16 v8, v38

    .end local v8
    .local v76, "levelWidth":I
    move/from16 v49, v24

    move/from16 v24, v9

    move/from16 v9, v35

    .end local v9
    .local v24, "lastY":I
    move/from16 v77, v31

    move/from16 v31, v10

    move v10, v12

    .end local v10
    .local v31, "lastX":I
    move/from16 v51, v14

    move/from16 v14, v30

    move/from16 v30, v12

    move v12, v11

    move/from16 v11, v44

    .end local v12
    .end local v14
    .local v30, "lastGpsOn":Z
    .local v51, "N":I
    move/from16 v20, v50

    move/from16 v12, v45

    .end local v50
    .local v20, "i":I
    move/from16 v13, v37

    move/from16 v14, v39

    move-object/from16 v15, v21

    invoke-virtual/range {v0 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 973
    const/4 v0, -0x1

    move v9, v0

    .end local v24
    .restart local v9
    move v10, v0

    .line 974
    .end local v31
    .restart local v10
    const/4 v3, 0x0

    .line 975
    .end local v40
    .restart local v3
    const/4 v7, 0x0

    .line 976
    .end local v21
    .restart local v7
    move/from16 v0, v77

    .end local v39
    .local v0, "lastCpuRunning":Z
    move/from16 v45, v77

    move/from16 v14, v77

    .end local v44
    .local v14, "lastFlashlightOn":Z
    move/from16 v11, v77

    .end local v30
    .restart local v11
    move/from16 v1, v77

    .end local v35
    .local v1, "lastScreenOn":Z
    move/from16 v2, v77

    .line 982
    .end local v32
    .end local v38
    .restart local v2
    move/from16 v72, v0

    goto :goto_2c

    .end local v1
    .end local v2
    .end local v3
    .end local v11
    .end local v20
    .end local v34
    .end local v37
    .end local v41
    .end local v45
    .end local v46
    .end local v47
    .end local v51
    .end local v76
    .local v0, "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v8
    .restart local v12
    .local v14, "N":I
    .restart local v50
    .restart local v54
    .restart local v56
    .restart local v58
    .restart local v59
    .restart local v65
    .restart local v67
    .restart local v69
    .restart local v72
    .restart local v74
    .restart local v75
    :cond_36
    move-object/from16 v34, v0

    move-object/from16 v21, v7

    move/from16 v76, v8

    move/from16 v30, v12

    move/from16 v51, v14

    move/from16 v49, v24

    move/from16 v77, v31

    move/from16 v20, v50

    move-wide/from16 v47, v54

    move/from16 v41, v56

    move/from16 v38, v58

    move/from16 v35, v59

    move/from16 v44, v65

    move/from16 v45, v67

    move/from16 v37, v69

    move/from16 v39, v72

    move-object/from16 v40, v74

    move/from16 v46, v75

    move/from16 v24, v9

    move/from16 v31, v10

    .end local v0
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v12
    .end local v14
    .end local v50
    .end local v54
    .end local v56
    .end local v58
    .end local v59
    .end local v65
    .end local v67
    .end local v69
    .end local v72
    .end local v74
    .end local v75
    .restart local v20
    .restart local v21
    .restart local v24
    .restart local v30
    .restart local v31
    .restart local v34
    .restart local v35
    .restart local v37
    .restart local v38
    .restart local v39
    .restart local v40
    .restart local v41
    .restart local v44
    .restart local v45
    .restart local v46
    .restart local v47
    .restart local v51
    .restart local v76
    :goto_2b
    move-object/from16 v7, v21

    move/from16 v9, v24

    move/from16 v11, v30

    move/from16 v10, v31

    move/from16 v1, v35

    move/from16 v2, v38

    move/from16 v72, v39

    move-object/from16 v3, v40

    move/from16 v14, v44

    .end local v21
    .end local v24
    .end local v30
    .end local v31
    .end local v35
    .end local v37
    .end local v38
    .end local v39
    .end local v40
    .end local v44
    .restart local v1
    .restart local v2
    .restart local v3
    .restart local v4
    .restart local v7
    .restart local v9
    .restart local v10
    .restart local v11
    .local v14, "lastFlashlightOn":Z
    .local v46, "lastWifiRunning":Z
    .restart local v72
    :goto_2c
    move/from16 v4, v46

    move/from16 v46, v37

    :goto_2d
    add-int/lit8 v12, v20, 0x1

    .line 779
    .end local v20
    .local v12, "i":I
    move/from16 v13, p2

    move-object/from16 v0, v34

    move-wide/from16 v5, v47

    move/from16 v47, v72

    move/from16 v8, v76

    move-object/from16 v15, p0

    move/from16 v48, v4

    move/from16 v4, v41

    move/from16 v41, v51

    goto/16 :goto_8

    .line 984
    .end local v34
    .end local v41
    .end local v51
    .end local v72
    .end local v76
    .restart local v0
    .local v4, "batLow":I
    .restart local v5
    .restart local v8
    .local v14, "N":I
    .local v47, "lastCpuRunning":Z
    .restart local v48
    .restart local v49
    :cond_37
    move-object/from16 v34, v0

    move/from16 v35, v1

    move/from16 v38, v2

    move-object/from16 v40, v3

    move/from16 v41, v4

    move-object/from16 v21, v7

    move/from16 v76, v8

    move/from16 v24, v9

    move/from16 v31, v10

    move/from16 v30, v11

    move/from16 v20, v12

    move/from16 v51, v14

    move/from16 v37, v46

    move/from16 v39, v47

    move/from16 v46, v48

    move/from16 v44, v49

    const/16 v77, 0x0

    move-wide/from16 v47, v5

    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v14
    .end local v48
    .end local v49
    .restart local v20
    .restart local v21
    .restart local v24
    .restart local v30
    .restart local v31
    .restart local v34
    .restart local v35
    .restart local v37
    .restart local v38
    .restart local v39
    .restart local v40
    .restart local v41
    .restart local v44
    .local v46, "lastWifiSupplState":I
    .local v47, "walltimeStart":J
    .restart local v51
    .restart local v76
    goto :goto_2e

    .end local v20
    .end local v21
    .end local v24
    .end local v30
    .end local v31
    .end local v34
    .end local v35
    .end local v37
    .end local v38
    .end local v39
    .end local v40
    .end local v44
    .end local v51
    .end local v76
    .restart local v0
    .restart local v1
    .restart local v2
    .restart local v3
    .restart local v4
    .restart local v5
    .restart local v7
    .restart local v8
    .restart local v9
    .restart local v10
    .restart local v11
    .restart local v12
    .local v41, "N":I
    .local v46, "lastWifiRunning":Z
    .local v47, "lastCpuRunning":Z
    .restart local v48
    .restart local v49
    :cond_38
    move-object/from16 v34, v0

    move/from16 v35, v1

    move/from16 v38, v2

    move-object/from16 v40, v3

    move-object/from16 v21, v7

    move/from16 v76, v8

    move/from16 v24, v9

    move/from16 v31, v10

    move/from16 v30, v11

    move/from16 v20, v12

    move/from16 v51, v41

    move/from16 v37, v46

    move/from16 v39, v47

    move/from16 v46, v48

    move/from16 v44, v49

    const/16 v77, 0x0

    move/from16 v41, v4

    move-wide/from16 v47, v5

    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v48
    .end local v49
    .restart local v20
    .restart local v21
    .restart local v24
    .restart local v30
    .restart local v31
    .restart local v34
    .restart local v35
    .restart local v37
    .restart local v38
    .restart local v39
    .restart local v40
    .local v41, "batLow":I
    .restart local v44
    .local v46, "lastWifiSupplState":I
    .local v47, "walltimeStart":J
    .restart local v51
    .restart local v76
    :goto_2e
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 987
    .end local v34
    move/from16 v7, v25

    move/from16 v12, v26

    move-wide/from16 v33, v28

    move/from16 v32, v30

    move/from16 v25, v31

    move/from16 v31, v35

    move/from16 v35, v37

    move/from16 v30, v38

    move/from16 v37, v39

    move-object/from16 v28, v40

    move-object/from16 v29, v21

    move/from16 v26, v24

    goto :goto_2f

    .end local v20
    .end local v21
    .end local v24
    .end local v39
    .end local v40
    .end local v44
    .end local v45
    .end local v46
    .end local v47
    .end local v51
    .end local v76
    .local v2, "lastRealtime":J
    .restart local v4
    .restart local v5
    .local v7, "x":I
    .restart local v8
    .local v9, "startX":I
    .local v12, "y":I
    .local v25, "lastX":I
    .local v26, "lastY":I
    .local v27, "i":I
    .local v28, "curLevelPath":Landroid/graphics/Path;
    .restart local v29
    .local v30, "lastCharging":Z
    .local v31, "lastScreenOn":Z
    .local v32, "lastGpsOn":Z
    .restart local v33
    .local v34, "lastCameraOn":Z
    .local v35, "lastWifiRunning":Z
    .local v37, "lastCpuRunning":Z
    .local v38, "lastWifiSupplState":I
    .local v41, "N":I
    :cond_39
    move-wide/from16 v47, v5

    move/from16 v76, v8

    move/from16 v51, v41

    const/16 v77, 0x0

    move/from16 v41, v4

    .end local v4
    .end local v5
    .end local v8
    .local v41, "batLow":I
    .restart local v47
    .restart local v51
    .restart local v76
    move/from16 v20, v27

    move/from16 v44, v33

    move/from16 v45, v34

    move/from16 v46, v38

    move-wide/from16 v33, v2

    move/from16 v27, v9

    .end local v2
    .end local v9
    .end local v34
    .end local v38
    .restart local v20
    .local v27, "startX":I
    .local v33, "lastRealtime":J
    .restart local v44
    .restart local v45
    .restart local v46
    :goto_2f
    if-ltz v26, :cond_3c

    if-gez v25, :cond_3a

    .line 989
    move/from16 v14, v76

    goto :goto_30

    .line 1005
    :cond_3a
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget-wide v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    sub-long v1, v1, v47

    move/from16 v14, v76

    int-to-long v3, v14

    .end local v76
    .local v14, "levelWidth":I
    mul-long/2addr v1, v3

    div-long v1, v1, v18

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 1006
    .end local v7
    .local v0, "x":I
    if-gez v0, :cond_3b

    .line 1007
    const/4 v0, 0x0

    .line 1011
    .end local v0
    .end local v26
    .local v12, "lastY":I
    .local v13, "x":I
    .local v21, "y":I
    :cond_3b
    move v13, v0

    move/from16 v21, v12

    move/from16 v12, v26

    goto :goto_33

    .line 989
    .end local v13
    .end local v14
    .end local v21
    .restart local v7
    .local v12, "y":I
    .restart local v26
    .restart local v76
    :cond_3c
    move/from16 v14, v76

    .end local v76
    .restart local v14
    :goto_30
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move v1, v0

    .line 990
    .end local v7
    .end local v25
    .restart local v0
    .local v1, "lastX":I
    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v2, v2, v23

    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget v3, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    sub-int v3, v3, v41

    add-int/lit8 v4, v23, -0x1

    mul-int/2addr v3, v4

    div-int v3, v3, v22

    sub-int/2addr v2, v3

    move v3, v2

    .end local v26
    .local v3, "lastY":I
    move v12, v2

    .line 992
    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget v2, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    int-to-byte v2, v2

    .line 993
    .local v2, "value":B
    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    if-gt v2, v4, :cond_3d

    iget-object v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .local v4, "path":Landroid/graphics/Path;
    :goto_31
    goto :goto_32

    .line 994
    .end local v4
    :cond_3d
    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    if-gt v2, v4, :cond_3e

    iget-object v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    goto :goto_31

    .line 995
    :cond_3e
    const/4 v4, 0x0

    .line 996
    .restart local v4
    :goto_32
    if-eqz v4, :cond_3f

    .line 997
    int-to-float v5, v0

    int-to-float v6, v12

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 998
    move-object/from16 v29, v4

    .line 1000
    :cond_3f
    iget-object v5, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    int-to-float v6, v0

    int-to-float v7, v12

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1001
    iget-object v5, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 1002
    .end local v28
    .local v5, "curLevelPath":Landroid/graphics/Path;
    move/from16 v0, p1

    .line 1003
    .end local v2
    .end local v4
    nop

    .line 1011
    move v13, v0

    move/from16 v25, v1

    move-object/from16 v28, v5

    move/from16 v21, v12

    move v12, v3

    .end local v0
    .end local v1
    .end local v3
    .end local v5
    .local v12, "lastY":I
    .restart local v13
    .restart local v21
    .restart local v25
    .restart local v28
    :goto_33
    move-object v0, v15

    move v1, v13

    move/from16 v2, p2

    move/from16 v3, v23

    move/from16 v4, v27

    move v5, v12

    move-object/from16 v6, v28

    move/from16 v7, v25

    move/from16 v8, v30

    move/from16 v9, v31

    move/from16 v10, v32

    move/from16 v11, v44

    move/from16 v78, v12

    move/from16 v12, v45

    .end local v12
    .local v78, "lastY":I
    move/from16 v79, v13

    move/from16 v13, v35

    .end local v13
    .local v79, "x":I
    move/from16 v24, v14

    move/from16 v14, v37

    .end local v14
    .local v24, "levelWidth":I
    move-object/from16 v15, v29

    invoke-virtual/range {v0 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 1015
    move/from16 v0, p1

    move/from16 v1, v79

    if-ge v1, v0, :cond_41

    .line 1018
    .end local v79
    .local v1, "x":I
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v4, v1

    move/from16 v5, v78

    int-to-float v6, v5

    .end local v78
    .local v5, "lastY":I
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1019
    iget v3, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v3, v3, v23

    rsub-int/lit8 v4, v41, 0x64

    add-int/lit8 v6, v23, -0x1

    mul-int/2addr v4, v6

    div-int v4, v4, v22

    sub-int/2addr v3, v4

    .line 1020
    .local v3, "fullY":I
    iget v4, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v4, v4, v23

    move/from16 v6, v77

    rsub-int/lit8 v10, v41, 0x0

    add-int/lit8 v7, v23, -0x1

    mul-int/2addr v10, v7

    div-int v10, v10, v22

    sub-int/2addr v4, v10

    .line 1021
    .local v4, "emptyY":I
    iget-object v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-boolean v7, v7, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-eqz v7, :cond_40

    .line 1022
    iget-object v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    iget v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v8, v8

    int-to-float v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_34

    .line 1024
    :cond_40
    iget-object v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    iget v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v8, v8

    int-to-float v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1025
    iget-object v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    iget v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v8, v8

    int-to-float v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1027
    :goto_34
    iget-object v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1028
    iget-object v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .end local v3
    .end local v4
    goto :goto_35

    .line 1031
    .end local v5
    .restart local v78
    :cond_41
    move/from16 v6, v77

    move/from16 v5, v78

    move-object/from16 v2, p0

    .end local v78
    .restart local v5
    :goto_35
    iget-wide v3, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-lez v3, :cond_48

    iget-wide v3, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    iget-wide v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_48

    .line 1033
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->is24Hour()Z

    move-result v3

    .line 1034
    .local v3, "is24hr":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1035
    .local v4, "calStart":Ljava/util/Calendar;
    iget-wide v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1036
    const/16 v7, 0xe

    invoke-virtual {v4, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 1037
    const/16 v8, 0xd

    invoke-virtual {v4, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 1038
    const/16 v9, 0xc

    invoke-virtual {v4, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 1039
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 1040
    .local v10, "startRoundTime":J
    iget-wide v12, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v12, v10, v12

    const/16 v13, 0xb

    if-gez v12, :cond_42

    .line 1041
    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v14, 0x1

    add-int/2addr v12, v14

    invoke-virtual {v4, v13, v12}, Ljava/util/Calendar;->set(II)V

    .line 1042
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    goto :goto_36

    .line 1044
    :cond_42
    const/4 v14, 0x1

    :goto_36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 1045
    .local v12, "calEnd":Ljava/util/Calendar;
    iget-wide v13, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1046
    invoke-virtual {v12, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 1047
    invoke-virtual {v12, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 1048
    invoke-virtual {v12, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 1049
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 1050
    .local v13, "endRoundTime":J
    cmp-long v15, v10, v13

    const-wide/16 v38, 0x2

    if-gez v15, :cond_44

    .line 1051
    iget v15, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v9, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v2, v4, v15, v9, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1052
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 1053
    .local v9, "calMid":Ljava/util/Calendar;
    iget-wide v6, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-object/from16 v80, v9

    iget-wide v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .end local v9
    .local v80, "calMid":Ljava/util/Calendar;
    move/from16 v81, v1

    iget-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .end local v1
    .local v81, "x":I
    sub-long/2addr v8, v0

    div-long v8, v8, v38

    add-long/2addr v6, v8

    move-object/from16 v0, v80

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1054
    .end local v80
    .local v0, "calMid":Ljava/util/Calendar;
    const/4 v1, 0x0

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 1055
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 1056
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 1057
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1058
    .local v6, "calMidMillis":J
    cmp-long v1, v6, v10

    if-lez v1, :cond_43

    cmp-long v1, v6, v13

    if-gez v1, :cond_43

    .line 1059
    iget v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v2, v0, v1, v8, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1061
    :cond_43
    iget v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v2, v12, v1, v8, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .end local v0
    .end local v6
    goto :goto_37

    .line 1065
    .end local v81
    .restart local v1
    :cond_44
    move/from16 v81, v1

    .end local v1
    .restart local v81
    :goto_37
    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v1, v6, :cond_45

    .line 1066
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v12, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_49

    .line 1067
    :cond_45
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->isDayFirst()Z

    move-result v1

    .line 1068
    .local v1, "isDayFirst":Z
    const/4 v6, 0x0

    const/16 v7, 0xb

    invoke-virtual {v4, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 1069
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1070
    .end local v10
    .local v6, "startRoundTime":J
    iget-wide v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_46

    .line 1071
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v4, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 1072
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1074
    :cond_46
    const/4 v0, 0x0

    const/16 v8, 0xb

    invoke-virtual {v12, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 1075
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1076
    .end local v13
    .local v8, "endRoundTime":J
    cmp-long v0, v6, v8

    if-gez v0, :cond_47

    .line 1077
    iget v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v10, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v2, v4, v0, v10, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1078
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1082
    .restart local v0
    sub-long v10, v8, v6

    div-long v10, v10, v38

    add-long/2addr v10, v6

    const-wide/32 v13, 0x6ddd00

    add-long/2addr v10, v13

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1084
    const/4 v10, 0x0

    const/16 v11, 0xb

    invoke-virtual {v0, v11, v10}, Ljava/util/Calendar;->set(II)V

    .line 1085
    const/16 v11, 0xc

    invoke-virtual {v0, v11, v10}, Ljava/util/Calendar;->set(II)V

    .line 1086
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 1087
    .local v10, "calMidMillis":J
    cmp-long v13, v10, v6

    if-lez v13, :cond_47

    cmp-long v13, v10, v8

    if-gez v13, :cond_47

    .line 1088
    iget v13, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v14, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v2, v0, v13, v14, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1091
    .end local v0
    .end local v10
    :cond_47
    iget v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v10, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v2, v12, v0, v10, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .end local v1
    .end local v3
    .end local v4
    .end local v6
    .end local v8
    .end local v12
    goto :goto_38

    .line 1095
    .end local v81
    .local v1, "x":I
    :cond_48
    move/from16 v81, v1

    .end local v1
    .restart local v81
    :cond_49
    :goto_38
    iget-object v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4a

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v3, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    iget-wide v6, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    sub-long/2addr v3, v6

    invoke-static {v0, v3, v4}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1100
    iget-object v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto :goto_39

    .line 1102
    :cond_4a
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1103
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    .line 1105
    :goto_39
    return-void

    .line 671
    .end local v5
    .end local v16
    .end local v17
    .end local v18
    .end local v20
    .end local v21
    .end local v22
    .end local v23
    .end local v24
    .end local v25
    .end local v27
    .end local v28
    .end local v29
    .end local v30
    .end local v31
    .end local v32
    .end local v33
    .end local v35
    .end local v36
    .end local v37
    .end local v41
    .end local v42
    .end local v44
    .end local v45
    .end local v46
    .end local v47
    .end local v51
    .end local v81
    :cond_4b
    :goto_3a
    move-object v2, v15

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0    # 0x0
        :pswitch_0    # 0x1
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_0    # 0xb
        :pswitch_0    # 0xc
    .end packed-switch
.end method
