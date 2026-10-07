.class Lcom/android/settings/fuelgauge/ShutDownTimerSettings$7;
.super Ljava/lang/Object;
.source "ShutDownTimerSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->ChargingPowerOffPadEnableChangeEvent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

.field final synthetic val$newValue:Z


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    .line 807
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$7;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$7;->val$newValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 810
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$7;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 811
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_charging_turn_off_pad_enable"

    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$7;->val$newValue:Z

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 813
    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$7;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->updateChargingTurnOffPadEnableStatus()V

    .line 815
    :cond_0
    return-void
.end method
