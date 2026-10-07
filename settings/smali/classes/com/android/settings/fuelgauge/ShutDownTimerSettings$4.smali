.class Lcom/android/settings/fuelgauge/ShutDownTimerSettings$4;
.super Ljava/lang/Object;
.source "ShutDownTimerSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/ShutDownTimerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    .line 705
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$4;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 708
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$4;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 709
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 710
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 711
    .local v2, "currentTimeout":I
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$4;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    int-to-long v4, v2

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getAutoTurnOffPadSummary(Landroid/app/Activity;J)Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, "strSummary":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "db_delaytime_turn_off_pad_timeout"

    int-to-long v6, v2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 713
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$4;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$200(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$4$1;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$4$1;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$4;Ljava/lang/String;)V

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 721
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$4;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$1100(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Lcom/android/settings/BeanVariable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 722
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$4;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$1100(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Lcom/android/settings/BeanVariable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$4;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$1100(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Lcom/android/settings/BeanVariable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;)V

    .line 725
    :cond_0
    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->startPowerOffKeeperService(Landroid/content/Context;)V

    .line 727
    .end local v2
    .end local v3
    :cond_1
    return v1
.end method
