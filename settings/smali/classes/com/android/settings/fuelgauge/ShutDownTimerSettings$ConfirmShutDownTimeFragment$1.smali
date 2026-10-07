.class Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$1;
.super Ljava/lang/Object;
.source "ShutDownTimerSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;
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

    .line 545
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 548
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, "spf":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$300(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$400(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$400(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 553
    .local v1, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 554
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 555
    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 556
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 557
    .local v2, "delayTime":J
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$500(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 558
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$500(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    iget-object v5, v5, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mUpdateTimeNow:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 559
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$300(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 560
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->access$500(Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment$1;->this$0:Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;

    iget-object v5, v5, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;->mUpdateTimeNow:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 563
    :cond_1
    return-void
.end method
