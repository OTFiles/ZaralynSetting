.class Lcom/android/settings/fuelgauge/PowerOffKeeperService$5;
.super Landroid/database/ContentObserver;
.source "PowerOffKeeperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerOffKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 411
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$5;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 414
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "==========divhee==========mColorTempObserver=service=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DisplayColorTempSettings;->isCanResetColorTemp(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$5;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$600(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$5;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$600(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$5;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$600(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 421
    :goto_0
    return-void
.end method
