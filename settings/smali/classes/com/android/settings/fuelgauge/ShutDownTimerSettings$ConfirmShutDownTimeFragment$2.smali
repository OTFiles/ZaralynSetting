.class Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$2;
.super Ljava/lang/Object;
.source "ShutDownTimerSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    .line 576
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$2;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 580
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 581
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "shutdown_time"

    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$2;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$600(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$2;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$600(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)[I

    move-result-object v5

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    const-string v2, "shutdown_switch"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$2;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$700(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 583
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$2;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_at_time_turn_off_pad"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 585
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v1

    .line 586
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$2;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$800(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Lcom/android/settings/BeanVariable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$2;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$800(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Lcom/android/settings/BeanVariable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$2;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$800(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Lcom/android/settings/BeanVariable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$2;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 591
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->setAtTimePowerOffKeeperBroadcastReceiver(Landroid/content/Context;)V

    .line 592
    return-void
.end method
