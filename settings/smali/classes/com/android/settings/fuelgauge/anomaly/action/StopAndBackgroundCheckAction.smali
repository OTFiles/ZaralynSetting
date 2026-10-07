.class public Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;
.super Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;
.source "StopAndBackgroundCheckAction.java"


# instance fields
.field mBackgroundCheckAction:Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;

.field mForceStopAction:Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;

    invoke-direct {v1, p1}, Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;)V

    .line 38
    const/16 v0, 0x4d1

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mActionMetricKey:I

    .line 39
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceStopAction"    # Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;
    .param p3, "backgroundCheckAction"    # Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mForceStopAction:Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;

    .line 46
    iput-object p3, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mBackgroundCheckAction:Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;

    .line 47
    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    .line 64
    const/4 v0, 0x3

    return v0
.end method

.method public handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V
    .locals 1
    .param p1, "anomaly"    # Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    .param p2, "metricsKey"    # I

    .line 51
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mForceStopAction:Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;->handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mBackgroundCheckAction:Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;->handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    .line 54
    return-void
.end method

.method public isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z
    .locals 1
    .param p1, "anomaly"    # Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    .line 58
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mForceStopAction:Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;->isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/StopAndBackgroundCheckAction;->mBackgroundCheckAction:Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;

    .line 59
    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/action/BackgroundCheckAction;->isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0
.end method
