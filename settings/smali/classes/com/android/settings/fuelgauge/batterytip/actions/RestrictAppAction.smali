.class public Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "RestrictAppAction.java"


# instance fields
.field mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tip"    # Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    .line 47
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 48
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    .line 49
    return-void
.end method


# virtual methods
.method public handlePositiveAction(I)V
    .locals 17
    .param p1, "metricsKey"    # I

    move-object/from16 v0, p0

    .line 56
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->getRestrictAppList()Ljava/util/List;

    move-result-object v1

    .line 58
    .local v1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/AppInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 59
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 60
    .local v5, "appInfo":Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    iget-object v6, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    .line 62
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v8, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    invoke-virtual {v7, v8, v6, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    .line 64
    iget-object v7, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    invoke-static {v7}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    const/16 v8, 0x341

    const/4 v9, 0x0

    const/16 v10, 0x552

    if-eqz v7, :cond_0

    .line 66
    iget-object v7, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v11, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mContext:Landroid/content/Context;

    new-array v4, v4, [Landroid/util/Pair;

    .line 68
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    aput-object v8, v4, v9

    .line 66
    invoke-virtual {v7, v11, v10, v6, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    goto :goto_2

    .line 70
    :cond_0
    iget-object v7, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 71
    .local v11, "type":I
    iget-object v12, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v13, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mContext:Landroid/content/Context;

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/util/Pair;

    .line 73
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    aput-object v8, v14, v9

    const/16 v8, 0x556

    .line 74
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    aput-object v8, v14, v4

    .line 71
    invoke-virtual {v12, v13, v10, v6, v14}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 75
    .end local v11
    nop

    .line 70
    const/16 v8, 0x341

    goto :goto_1

    .line 58
    .end local v5
    .end local v6
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v2
    .end local v3
    :cond_2
    iget-object v2, v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;->mBatteryDatabaseManager:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    invoke-virtual {v2, v1, v4}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->updateAnomalies(Ljava/util/List;I)V

    .line 80
    return-void
.end method
