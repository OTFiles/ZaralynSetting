.class Lcom/android/settings/fuelgauge/BatteryInfo$1;
.super Ljava/lang/Object;
.source "BatteryInfo.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatteryInfo;->bindHistory(Lcom/android/settings/graph/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastLevel:B

.field lastTime:I

.field points:Landroid/util/SparseIntArray;

.field startTime:J

.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$view:Lcom/android/settings/graph/UsageView;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatteryInfo;Lcom/android/settings/graph/UsageView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 60
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$view:Lcom/android/settings/graph/UsageView;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    .line 63
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->lastTime:I

    return-void
.end method


# virtual methods
.method public onDataGap()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$view:Lcom/android/settings/graph/UsageView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/settings/graph/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 88
    return-void
.end method

.method public onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "record"    # Landroid/os/BatteryStats$HistoryItem;

    .line 77
    long-to-int v0, p1

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->lastTime:I

    .line 78
    iget-byte v0, p3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->lastLevel:B

    .line 79
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->lastTime:I

    iget-byte v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->lastLevel:B

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    return-void
.end method

.method public onParsingDone()V
    .locals 7

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryInfo$1;->onDataGap()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x64

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$context:Landroid/content/Context;

    .line 97
    invoke-virtual {v0, v2}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    .line 98
    .local v0, "provider":Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->access$100(Lcom/android/settings/fuelgauge/BatteryInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$context:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$context:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->startTime:J

    invoke-interface {v0, v2, v3, v4}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPredictionCurve(Landroid/content/Context;J)Landroid/util/SparseIntArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    goto :goto_1

    .line 102
    :cond_0
    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->lastTime:I

    if-ltz v2, :cond_2

    .line 103
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->lastTime:I

    iget-byte v4, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->lastLevel:B

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/BatteryInfo;->access$000(Lcom/android/settings/fuelgauge/BatteryInfo;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v5, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 105
    invoke-static {v5, v6}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v3, v3

    .line 106
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/BatteryInfo;->access$100(Lcom/android/settings/fuelgauge/BatteryInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    move v4, v1

    goto :goto_0

    .line 106
    :cond_1
    const/4 v4, 0x0

    .line 104
    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 112
    .end local v0
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 114
    .local v0, "maxTime":I
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$view:Lcom/android/settings/graph/UsageView;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/graph/UsageView;->configureGraph(II)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$view:Lcom/android/settings/graph/UsageView;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->points:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Lcom/android/settings/graph/UsageView;->addProjectedPath(Landroid/util/SparseIntArray;)V

    .line 117
    .end local v0
    :cond_3
    return-void
.end method

.method public onParsingStarted(JJ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 68
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->startTime:J

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    sub-long v1, p3, p1

    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->access$002(Lcom/android/settings/fuelgauge/BatteryInfo;J)J

    .line 70
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$view:Lcom/android/settings/graph/UsageView;

    invoke-virtual {v0}, Lcom/android/settings/graph/UsageView;->clearPaths()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->val$view:Lcom/android/settings/graph/UsageView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$1;->this$0:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryInfo;->access$000(Lcom/android/settings/fuelgauge/BatteryInfo;)J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/graph/UsageView;->configureGraph(II)V

    .line 73
    return-void
.end method
