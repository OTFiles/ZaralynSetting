.class Lcom/android/settings/fuelgauge/PowerOffKeeperService$8;
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

    .line 907
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$8;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 911
    :try_start_0
    new-instance v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$MyUpdateFwqInfoTask;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$8;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$MyUpdateFwqInfoTask;-><init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$MyUpdateFwqInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 913
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 914
    :goto_0
    return-void
.end method
