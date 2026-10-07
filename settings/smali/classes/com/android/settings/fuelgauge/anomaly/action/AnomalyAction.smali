.class public abstract Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;
.super Ljava/lang/Object;
.source "AnomalyAction.java"


# instance fields
.field protected mActionMetricKey:I

.field protected mContext:Landroid/content/Context;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 39
    return-void
.end method


# virtual methods
.method public abstract getActionType()I
.end method

.method public handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V
    .locals 7
    .param p1, "anomaly"    # Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    .param p2, "contextMetricsKey"    # I

    .line 49
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->mActionMetricKey:I

    iget-object v3, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/util/Pair;

    .line 50
    const/16 v5, 0x341

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 49
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 51
    return-void
.end method

.method public abstract isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z
.end method
