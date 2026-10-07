.class public Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsFactoryPowerTMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsFactoryPowerTMIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerNetCnnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    .line 211
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v0, p0

    .line 214
    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "first_time_start_factory_power_tm"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 216
    .local v3, "mPowerDetectWifi":I
    const-string v4, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=========divhee=========PowerConnectionReceiver========"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v6, 0xbb8

    const/4 v8, 0x2

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    iget-object v4, v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-static {v4, v5}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$102(Lcom/android/settings/SettingsFactoryPowerTMIntentService;Z)Z

    goto/16 :goto_6

    .line 252
    :cond_1
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 253
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-static {v9}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$100(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)Z

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "=========divhee=========PowerConnectionReceiver==WIFI_STATE_CHANGED_ACTION======"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v4, v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-static {v4}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$100(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 261
    if-ge v3, v8, :cond_a

    .line 262
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    iget-object v5, v5, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mRunnableCheckWifi:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    iget-object v5, v5, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mRunnableCheckWifi:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    .line 219
    :cond_2
    :goto_0
    const-string v4, "status"

    const/4 v9, -0x1

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 220
    .local v4, "status":I
    const/4 v10, 0x1

    if-eq v4, v8, :cond_4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_3

    goto :goto_1

    :cond_3
    move v11, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v11, v10

    .line 222
    .local v11, "isCharging1":Z
    :goto_2
    const-string v12, "plugged"

    invoke-virtual {v1, v12, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_5

    move v12, v10

    goto :goto_3

    :cond_5
    move v12, v5

    .line 223
    .local v12, "isCharging2":Z
    :goto_3
    iget-object v13, v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    if-eqz v11, :cond_6

    if-eqz v12, :cond_6

    move v14, v10

    goto :goto_4

    :cond_6
    move v14, v5

    :goto_4
    invoke-static {v13, v14}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$102(Lcom/android/settings/SettingsFactoryPowerTMIntentService;Z)Z

    .line 226
    const-string v13, "plugged"

    invoke-virtual {v1, v13, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 227
    .local v9, "chargePlug":I
    if-ne v9, v8, :cond_7

    move v13, v10

    goto :goto_5

    :cond_7
    move v13, v5

    .line 228
    .local v13, "usbCharge":Z
    :goto_5
    if-ne v9, v10, :cond_8

    move v5, v10

    nop

    .line 229
    .local v5, "acCharge":Z
    :cond_8
    iget-object v10, v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-static {v10, v5}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$102(Lcom/android/settings/SettingsFactoryPowerTMIntentService;Z)Z

    .line 237
    const-string v10, ""

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-static {v15}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$100(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, "===divhee===isCharging1="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, "===isCharging2="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, "==usbCharge="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, "==acCharge="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, "=="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v10, v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-static {v10}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$100(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 245
    if-ge v3, v8, :cond_9

    .line 246
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v10, v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    iget-object v10, v10, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mRunnableCheckWifi:Ljava/lang/Runnable;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 247
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v10, v0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$PowerNetCnnReceiver;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    iget-object v10, v10, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->mRunnableCheckWifi:Ljava/lang/Runnable;

    invoke-virtual {v8, v10, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    .end local v4
    .end local v5
    .end local v9
    .end local v11
    .end local v12
    .end local v13
    :cond_9
    nop

    .line 267
    :cond_a
    :goto_6
    return-void
.end method
