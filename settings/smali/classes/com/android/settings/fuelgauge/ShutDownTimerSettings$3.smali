.class Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;
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

    .line 674
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 677
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 678
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 679
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 680
    .local v2, "isSwitched":Z
    if-eqz v2, :cond_0

    const v3, 0x6ddd00

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 681
    .local v3, "currentTimeout":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    int-to-long v5, v3

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getAutoTurnOffPadSummary(Landroid/app/Activity;J)Ljava/lang/String;

    move-result-object v4

    .line 682
    .local v4, "strSummary":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "db_delaytime_turn_off_pad_timeout"

    int-to-long v7, v3

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 683
    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$200(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3$1;

    invoke-direct {v6, p0, v4}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3$1;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;Ljava/lang/String;)V

    const-wide/16 v7, 0xa

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 691
    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$1100(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Lcom/android/settings/BeanVariable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 692
    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$1100(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Lcom/android/settings/BeanVariable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    invoke-static {v6}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->access$1100(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Lcom/android/settings/BeanVariable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    xor-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;)V

    .line 695
    :cond_1
    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->startPowerOffKeeperService(Landroid/content/Context;)V

    .line 697
    .end local v2
    .end local v3
    .end local v4
    :cond_2
    return v1
.end method
