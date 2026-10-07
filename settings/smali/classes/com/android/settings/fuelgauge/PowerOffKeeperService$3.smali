.class Lcom/android/settings/fuelgauge/PowerOffKeeperService$3;
.super Ljava/lang/Object;
.source "PowerOffKeeperService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/PowerOffKeeperService;->onStartCommand(Landroid/content/Intent;II)I
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

    .line 223
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$3;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 226
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$3;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$100(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$3;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$000(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$3;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$200(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$3;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    sget-object v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->turnOffPadEvent(Landroid/content/Context;)V

    .line 230
    :cond_0
    return-void
.end method
