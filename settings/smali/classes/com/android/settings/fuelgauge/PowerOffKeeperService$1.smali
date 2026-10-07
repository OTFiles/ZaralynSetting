.class Lcom/android/settings/fuelgauge/PowerOffKeeperService$1;
.super Ljava/lang/Object;
.source "PowerOffKeeperService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 207
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$1;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 210
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$1;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$100(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$1;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$000(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$1;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$202(Lcom/android/settings/fuelgauge/PowerOffKeeperService;I)I

    .line 212
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$1;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    sget-object v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->turnOffPadEvent(Landroid/content/Context;)V

    .line 213
    return-void
.end method
