.class public Lcom/android/settings/fuelgauge/BatteryFlagParser;
.super Ljava/lang/Object;
.source "BatteryFlagParser.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;
.implements Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;


# instance fields
.field private final mAccentColor:I

.field private final mData:Landroid/util/SparseBooleanArray;

.field private final mFlag:I

.field private mLastSet:Z

.field private mLastTime:J

.field private mLength:J

.field private final mState2:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 1
    .param p1, "accent"    # I
    .param p2, "state2"    # Z
    .param p3, "flag"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    .line 34
    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mAccentColor:I

    .line 35
    iput p3, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mFlag:I

    .line 36
    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mState2:Z

    .line 37
    return-void
.end method

.method private getColor(Z)I
    .locals 1
    .param p1, "b"    # Z

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mAccentColor:I

    return v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getColorArray()Landroid/util/SparseIntArray;
    .locals 4

    .line 86
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 87
    .local v0, "ret":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/fuelgauge/BatteryFlagParser;->getColor(Z)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1
    :cond_0
    return-object v0
.end method

.method public getPeriod()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLength:J

    return-wide v0
.end method

.method public hasData()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isSet(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 2
    .param p1, "record"    # Landroid/os/BatteryStats$HistoryItem;

    .line 40
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mState2:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    :goto_0
    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public onDataGap()V
    .locals 3

    .line 60
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastTime:J

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 62
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    .line 64
    :cond_0
    return-void
.end method

.method public onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "record"    # Landroid/os/BatteryStats$HistoryItem;

    .line 50
    invoke-virtual {p0, p3}, Lcom/android/settings/fuelgauge/BatteryFlagParser;->isSet(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v0

    .line 51
    .local v0, "isSet":Z
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    if-eq v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    long-to-int v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 53
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    .line 55
    :cond_0
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastTime:J

    .line 56
    return-void
.end method

.method public onParsingDone()V
    .locals 3

    .line 68
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastTime:J

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 70
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    .line 72
    :cond_0
    return-void
.end method

.method public onParsingStarted(JJ)V
    .locals 2
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 45
    sub-long v0, p3, p1

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLength:J

    .line 46
    return-void
.end method
