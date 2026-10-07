.class public Lcom/android/settings/fuelgauge/PowerOffKeeperReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffKeeperReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public isRunServiceByServiceName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 80
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 81
    .local v0, "mActM":Landroid/app/ActivityManager;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 83
    .local v1, "runningServiceInfosList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 85
    .local v3, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 86
    const/4 v2, 0x1

    return v2

    .line 88
    .end local v3
    :cond_0
    goto :goto_0

    .line 91
    .end local v0
    .end local v1
    :cond_1
    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 92
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_9

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 29
    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 30
    invoke-static {p1, v3}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->setAutoDelayTimePowerOffKeeperBroadcastReceiver(Landroid/content/Context;Z)V

    goto/16 :goto_6

    .line 31
    :cond_1
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    invoke-static {p1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->setAtTimePowerOffKeeperBroadcastReceiver(Landroid/content/Context;)V

    goto :goto_6

    .line 33
    :cond_2
    const-string v1, "com.readboy.parentmanager.ACTION_START_PACKAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.readboy.parentmanager.ACTION_PAUSE_PACKAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 40
    :cond_3
    move v1, v3

    .line 42
    .local v1, "isNeedRestartKeeperService":I
    :try_start_0
    sget-object v3, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-wide v3, v3, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastCheckServiceRunningTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    goto :goto_0

    .line 44
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    iget-wide v5, v5, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastCheckServiceRunningTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    .line 45
    const/4 v1, 0x2

    .line 47
    :try_start_1
    sget-object v3, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastCheckServiceRunningTime:J

    .line 49
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 48
    :catch_0
    move-exception v3

    goto :goto_1

    .line 43
    :cond_5
    :goto_0
    const/4 v1, 0x1

    .line 52
    :cond_6
    :goto_1
    goto :goto_2

    .line 51
    :catch_1
    move-exception v3

    .line 54
    :goto_2
    if-ne v1, v2, :cond_7

    .line 56
    :try_start_2
    invoke-static {p1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->startPowerOffKeeperService(Landroid/content/Context;)V

    goto :goto_4

    .line 64
    :catch_2
    move-exception v2

    goto :goto_3

    .line 57
    :cond_7
    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 58
    const-string v2, "com.android.settings.fuelgauge.PowerOffKeeperService"

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/fuelgauge/PowerOffKeeperReceiver;->isRunServiceByServiceName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 60
    .local v2, "isRunningKeeperService":Z
    if-nez v2, :cond_8

    .line 61
    invoke-static {p1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->startPowerOffKeeperService(Landroid/content/Context;)V

    .end local v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 64
    :goto_3
    nop

    .end local v1
    goto :goto_6

    .line 65
    .restart local v1
    :cond_8
    :goto_4
    goto :goto_6

    .line 28
    .end local v1
    :cond_9
    :goto_5
    invoke-static {p1, v2}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->setAutoDelayTimePowerOffKeeperBroadcastReceiver(Landroid/content/Context;Z)V

    .line 70
    :cond_a
    :goto_6
    return-void
.end method
