.class Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChartData"
.end annotation


# instance fields
.field mColors:[I

.field mLastBin:I

.field mNumTicks:I

.field mPaints:[Landroid/graphics/Paint;

.field mTicks:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addTick(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "bin"    # I

    .line 88
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    const v2, 0xffff

    and-int/2addr v2, p1

    shl-int/lit8 v3, p2, 0x10

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 90
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    .line 91
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    .line 93
    :cond_0
    return-void
.end method

.method draw(Landroid/graphics/Canvas;II)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I
    .param p3, "height"    # I

    move-object v0, p0

    move/from16 v1, p2

    .line 102
    const/4 v2, 0x0

    .local v2, "lastBin":I
    const/4 v3, 0x0

    .line 103
    .local v3, "lastX":I
    add-int v4, v1, p3

    .line 104
    .local v4, "bottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    if-ge v5, v6, :cond_1

    .line 105
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    aget v6, v6, v5

    .line 106
    .local v6, "tick":I
    const v7, 0xffff

    and-int/2addr v7, v6

    .line 107
    .local v7, "x":I
    const/high16 v8, -0x10000

    and-int/2addr v8, v6

    shr-int/lit8 v8, v8, 0x10

    .line 108
    .local v8, "bin":I
    if-eqz v2, :cond_0

    .line 109
    int-to-float v10, v3

    int-to-float v11, v1

    int-to-float v12, v7

    int-to-float v13, v4

    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v14, v9, v2

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    :cond_0
    move v2, v8

    .line 112
    move v3, v7

    .line 104
    .end local v6
    .end local v7
    .end local v8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 115
    .end local v5
    :cond_1
    return-void
.end method

.method finish(I)V
    .locals 1
    .param p1, "width"    # I

    .line 96
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 99
    :cond_0
    return-void
.end method

.method init(I)V
    .locals 1
    .param p1, "width"    # I

    .line 78
    if-lez p1, :cond_0

    .line 79
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    goto :goto_0

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    .line 83
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    .line 84
    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    .line 85
    return-void
.end method

.method setColors([I)V
    .locals 3
    .param p1, "colors"    # [I

    .line 68
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mColors:[I

    .line 69
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 72
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0
    :cond_0
    return-void
.end method
