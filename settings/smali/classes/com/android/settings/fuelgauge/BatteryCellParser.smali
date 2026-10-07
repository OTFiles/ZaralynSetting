.class public Lcom/android/settings/fuelgauge/BatteryCellParser;
.super Ljava/lang/Object;
.source "BatteryCellParser.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;
.implements Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;


# instance fields
.field private final mData:Landroid/util/SparseIntArray;

.field private mLastTime:J

.field private mLastValue:I

.field private mLength:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    return-void
.end method

.method private getColor(I)I
    .locals 1
    .param p1, "i"    # I

    .line 98
    sget-object v0, Lcom/android/settings/Utils;->BADNESS_COLORS:[I

    aget v0, v0, p1

    return v0
.end method


# virtual methods
.method public getColorArray()Landroid/util/SparseIntArray;
    .locals 4

    .line 90
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 91
    .local v0, "ret":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/fuelgauge/BatteryCellParser;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1
    :cond_0
    return-object v0
.end method

.method public getPeriod()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLength:J

    return-wide v0
.end method

.method protected getValue(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 3
    .param p1, "rec"    # Landroid/os/BatteryStats$HistoryItem;

    .line 33
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v0, v0, 0x1c0

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 36
    const/4 v0, 0x0

    .local v0, "bin":I
    :goto_0
    goto :goto_1

    .line 37
    .end local v0
    :cond_0
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v0, v0, 0x38

    shr-int/2addr v0, v1

    .line 42
    .restart local v0
    add-int/lit8 v0, v0, 0x2

    .line 44
    :goto_1
    return v0
.end method

.method public hasData()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onDataGap()V
    .locals 3

    .line 64
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastTime:J

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    iput v2, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    .line 68
    :cond_0
    return-void
.end method

.method public onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "record"    # Landroid/os/BatteryStats$HistoryItem;

    .line 54
    invoke-virtual {p0, p3}, Lcom/android/settings/fuelgauge/BatteryCellParser;->getValue(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v0

    .line 55
    .local v0, "value":I
    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    if-eq v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    long-to-int v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    .line 59
    :cond_0
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastTime:J

    .line 60
    return-void
.end method

.method public onParsingDone()V
    .locals 3

    .line 72
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mData:Landroid/util/SparseIntArray;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastTime:J

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    iput v2, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLastValue:I

    .line 76
    :cond_0
    return-void
.end method

.method public onParsingStarted(JJ)V
    .locals 2
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 49
    sub-long v0, p3, p1

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryCellParser;->mLength:J

    .line 50
    return-void
.end method
