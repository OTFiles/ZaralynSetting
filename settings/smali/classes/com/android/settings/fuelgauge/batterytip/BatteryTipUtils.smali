.class public Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;
.super Ljava/lang/Object;
.source "BatteryTipUtils.java"


# direct methods
.method public static getActionForBatteryTip(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
    .locals 3
    .param p0, "batteryTip"    # Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .param p1, "settingsActivity"    # Lcom/android/settings/SettingsActivity;
    .param p2, "fragment"    # Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 104
    :pswitch_0    # 0x1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 105
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;

    move-object v1, p0

    check-cast v1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-direct {v0, p2, v1}, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;-><init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;)V

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;

    move-object v1, p0

    check-cast v1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/actions/RestrictAppAction;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;)V

    return-object v0

    .line 95
    :pswitch_1    # 0x0
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;-><init>(Lcom/android/settings/SettingsActivity;Landroid/app/Fragment;)V

    return-object v0

    .line 110
    :cond_1
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;

    move-object v1, p0

    check-cast v1, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;)V

    return-object v0

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getState()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 99
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/actions/OpenBatterySaverAction;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/OpenBatterySaverAction;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 101
    :cond_3
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/actions/BatterySaverAction;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/BatterySaverAction;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public static getRestrictedAppsList(Landroid/app/AppOpsManager;Landroid/os/UserManager;)Ljava/util/List;
    .locals 13
    .param p0, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager;",
            "Landroid/os/UserManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 58
    .local v0, "userHandles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x46

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    .line 60
    .local v1, "packageOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v3, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/batterytip/AppInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 63
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 64
    .local v6, "packageOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    .line 65
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "entriesSize":I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 66
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$OpEntry;

    .line 67
    .local v10, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    if-eq v11, v2, :cond_0

    .line 68
    goto :goto_2

    .line 70
    :cond_0
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Landroid/os/UserHandle;

    .line 72
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 71
    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 73
    new-instance v11, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v11}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    .line 74
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v11

    .line 75
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setUid(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v11

    .line 76
    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v11

    .line 73
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v10
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 62
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v4
    .end local v5
    :cond_3
    return-object v3
.end method

.method public static uploadAnomalyPendingIntent(Landroid/content/Context;Landroid/app/StatsManager;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statsManager"    # Landroid/app/StatsManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/StatsManager$StatsUnavailableException;
        }
    .end annotation

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, "extraIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 125
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x1

    move-object v3, p1

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/app/StatsManager;->setBroadcastSubscriber(Landroid/app/PendingIntent;JJ)V

    .line 127
    return-void
.end method
