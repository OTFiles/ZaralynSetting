.class Lcom/android/settings/fuelgauge/PowerOffKeeperService$6;
.super Ljava/lang/Object;
.source "PowerOffKeeperService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 424
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$6;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 428
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DisplayColorTempSettings;->resetColorTempWhenStatusChangeEvent(Landroid/content/Context;)V

    .line 430
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 431
    :goto_0
    return-void
.end method
