.class Lcom/android/settings/wifi/tether/TetherService$2;
.super Landroid/content/BroadcastReceiver;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/TetherService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/tether/TetherService;

    .line 349
    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 352
    invoke-static {}, Lcom/android/settings/wifi/tether/TetherService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TetherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got provision result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "provisionResponse":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 357
    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/TetherService;->access$100(Lcom/android/settings/wifi/tether/TetherService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 358
    const-string v1, "TetherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected provision response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/TetherService;->access$300(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v2}, Lcom/android/settings/wifi/tether/TetherService;->access$200(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 362
    .local v1, "checkType":I
    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/wifi/tether/TetherService;->access$102(Lcom/android/settings/wifi/tether/TetherService;Z)Z

    .line 363
    const-string v2, "EntitlementResult"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 364
    .local v2, "result":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 365
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0    # 0x2
    iget-object v3, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v3}, Lcom/android/settings/wifi/tether/TetherService;->access$500(Lcom/android/settings/wifi/tether/TetherService;)V

    .line 371
    goto :goto_0

    .line 373
    :pswitch_1    # 0x1
    iget-object v3, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v3}, Lcom/android/settings/wifi/tether/TetherService;->access$600(Lcom/android/settings/wifi/tether/TetherService;)V

    goto :goto_0

    .line 367
    :pswitch_2    # 0x0
    iget-object v3, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v3}, Lcom/android/settings/wifi/tether/TetherService;->access$400(Lcom/android/settings/wifi/tether/TetherService;)V

    .line 368
    nop

    .line 377
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v3, v1, v2}, Lcom/android/settings/wifi/tether/TetherService;->access$700(Lcom/android/settings/wifi/tether/TetherService;II)V

    .line 379
    iget-object v3, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v3}, Lcom/android/settings/wifi/tether/TetherService;->access$204(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v4}, Lcom/android/settings/wifi/tether/TetherService;->access$300(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 381
    iget-object v3, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {v3}, Lcom/android/settings/wifi/tether/TetherService;->stopSelf()V

    goto :goto_1

    .line 384
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    iget-object v4, p0, Lcom/android/settings/wifi/tether/TetherService$2;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v4}, Lcom/android/settings/wifi/tether/TetherService;->access$200(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/wifi/tether/TetherService;->access$800(Lcom/android/settings/wifi/tether/TetherService;I)V

    .line 387
    .end local v1
    .end local v2
    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method
