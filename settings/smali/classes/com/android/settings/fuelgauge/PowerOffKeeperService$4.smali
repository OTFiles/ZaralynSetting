.class Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;
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

    .line 252
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 255
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$100(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$000(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$310(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)I

    .line 257
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$300(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)I

    move-result v0

    if-lez v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$400(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$400(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    const v2, 0x7f120b12

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$300(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$100(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$000(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$202(Lcom/android/settings/fuelgauge/PowerOffKeeperService;I)I

    .line 264
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    sget-object v1, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->turnOffPadEvent(Landroid/content/Context;)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$500(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$4;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$500(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 269
    :cond_2
    :goto_0
    return-void
.end method
