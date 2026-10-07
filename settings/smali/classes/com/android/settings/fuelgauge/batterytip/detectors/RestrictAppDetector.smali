.class public Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;
.super Ljava/lang/Object;
.source "RestrictAppDetector.java"


# static fields
.field static final USE_FAKE_DATA:Z = false


# instance fields
.field private mAppLabelPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

.field private mAppRestrictionPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

.field mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

.field private mContext:Landroid/content/Context;

.field private mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    .line 53
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    .line 54
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppRestrictionPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    .line 55
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppLabelPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    .line 56
    return-void
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 7

    .line 63
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->appRestrictionEnabled:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    .line 66
    .local v2, "oneDayBeforeMs":J
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->queryAllAnomalies(JI)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "highUsageApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/AppInfo;>;"
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppLabelPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppRestrictionPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-direct {v1, v4, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILjava/util/List;)V

    return-object v1

    .line 75
    :cond_0
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->queryAllAnomalies(JI)Ljava/util/List;

    move-result-object v4

    .line 78
    .local v4, "autoHandledApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/AppInfo;>;"
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppLabelPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->mAppRestrictionPredicate:Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;->negate()Ljava/util/function/Predicate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 79
    new-instance v5, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v5, v1, v4}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILjava/util/List;)V

    .line 79
    return-object v5

    .line 83
    .end local v0
    .end local v2
    .end local v4
    :cond_2
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILjava/util/List;)V

    return-object v0
.end method
