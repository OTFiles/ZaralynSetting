.class public Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;
.super Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;
.source "ForceStopAction.java"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;->mActivityManager:Landroid/app/ActivityManager;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 42
    const/16 v0, 0x327

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;->mActionMetricKey:I

    .line 43
    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V
    .locals 2
    .param p1, "anomaly"    # Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    .param p2, "contextMetricsKey"    # I

    .line 47
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v1, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z
    .locals 5
    .param p1, "anomaly"    # Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    .line 55
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/action/ForceStopAction;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 57
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 58
    .end local v1
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ForceStopAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find info for app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v1
    return v0
.end method
