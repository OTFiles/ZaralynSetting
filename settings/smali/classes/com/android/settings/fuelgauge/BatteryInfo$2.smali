.class Lcom/android/settings/fuelgauge/BatteryInfo$2;
.super Landroid/os/AsyncTask;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryStats;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/fuelgauge/BatteryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/settings/fuelgauge/BatteryInfo$Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shortString:Z

.field final synthetic val$stats:Landroid/os/BatteryStats;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;ZLcom/android/settings/fuelgauge/BatteryInfo$Callback;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$stats:Landroid/os/BatteryStats;

    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$shortString:Z

    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$callback:Lcom/android/settings/fuelgauge/BatteryInfo$Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 21
    .param p1, "params"    # [Ljava/lang/Void;

    move-object/from16 v0, p0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 162
    .local v1, "startTime":J
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    .line 163
    invoke-static {v3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v3

    .line 165
    .local v3, "provider":Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v4

    .line 167
    .local v4, "elapsedRealtimeUs":J
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v13

    .line 170
    .local v13, "batteryBroadcast":Landroid/content/Intent;
    const-string v6, "plugged"

    .line 171
    const/4 v7, -0x1

    invoke-virtual {v13, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move v14, v6

    .line 173
    .local v14, "discharging":Z
    if-eqz v14, :cond_1

    if-eqz v3, :cond_1

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    .line 174
    invoke-interface {v3, v6}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 175
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    invoke-interface {v3, v6}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settings/fuelgauge/Estimate;

    move-result-object v15

    .line 176
    .local v15, "estimate":Lcom/android/settings/fuelgauge/Estimate;
    if-eqz v15, :cond_1

    .line 177
    const-string v6, "BatteryInfo"

    const-string v7, "time for enhanced BatteryInfo"

    .line 178
    invoke-static {v6, v7, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 179
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$stats:Landroid/os/BatteryStats;

    iget-boolean v12, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$shortString:Z

    move-object v7, v13

    move-object v9, v15

    move-wide v10, v4

    invoke-static/range {v6 .. v12}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v6

    return-object v6

    .line 183
    .end local v15
    :cond_1
    if-eqz v14, :cond_2

    .line 184
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$stats:Landroid/os/BatteryStats;

    invoke-virtual {v6, v4, v5}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v6

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x0

    :goto_1
    move-wide v10, v6

    .line 185
    .local v10, "prediction":J
    new-instance v6, Lcom/android/settings/fuelgauge/Estimate;

    .line 186
    invoke-static {v10, v11}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v16

    const/16 v18, 0x0

    const-wide/16 v19, -0x1

    move-object v15, v6

    invoke-direct/range {v15 .. v20}, Lcom/android/settings/fuelgauge/Estimate;-><init>(JZJ)V

    move-object v9, v6

    .line 189
    .local v9, "estimate":Lcom/android/settings/fuelgauge/Estimate;
    const-string v6, "BatteryInfo"

    const-string v7, "time for regular BatteryInfo"

    invoke-static {v6, v7, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 190
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$stats:Landroid/os/BatteryStats;

    iget-boolean v12, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$shortString:Z

    move-object v7, v13

    move-wide v15, v10

    move-wide v10, v4

    .end local v10
    .local v15, "prediction":J
    invoke-static/range {v6 .. v12}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v6

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 158
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 4
    .param p1, "batteryInfo"    # Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 197
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$callback:Lcom/android/settings/fuelgauge/BatteryInfo$Callback;

    invoke-interface {v2, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$Callback;->onBatteryInfoLoaded(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    .line 198
    const-string v2, "BatteryInfo"

    const-string v3, "time for callback"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 199
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 158
    check-cast p1, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;->onPostExecute(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method
