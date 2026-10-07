.class Lcom/android/settings/fuelgauge/PowerOffKeeperService$7;
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

    .line 671
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$7;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$7;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->checkFwqConfigureEvent(I)V

    .line 677
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 678
    :goto_0
    return-void
.end method
