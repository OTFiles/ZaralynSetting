.class Lcom/android/settings/MasterClearConfirm$4;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/MasterClearConfirm;

    .line 386
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$4;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 390
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "action":Ljava/lang/String;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======divhee=====getBatteryStatus==1==action=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======divhee=====getBatteryStatus==2==action=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {p2}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "power":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 396
    const-string v2, "%"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 398
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$4;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/settings/MasterClearConfirm;->access$002(Lcom/android/settings/MasterClearConfirm;I)I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/settings/MasterClearConfirm$4;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v4, v3}, Lcom/android/settings/MasterClearConfirm;->access$002(Lcom/android/settings/MasterClearConfirm;I)I

    .line 401
    .end local v2
    :goto_0
    goto :goto_1

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$4;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v2, v3}, Lcom/android/settings/MasterClearConfirm;->access$002(Lcom/android/settings/MasterClearConfirm;I)I

    .line 405
    :goto_1
    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "============divhee=======mPowerValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/MasterClearConfirm$4;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v5}, Lcom/android/settings/MasterClearConfirm;->access$000(Lcom/android/settings/MasterClearConfirm;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$4;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v2}, Lcom/android/settings/MasterClearConfirm;->access$500(Lcom/android/settings/MasterClearConfirm;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a017e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/MasterClearConfirm$4;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v5}, Lcom/android/settings/MasterClearConfirm;->access$000(Lcom/android/settings/MasterClearConfirm;)I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 407
    iget-object v2, p0, Lcom/android/settings/MasterClearConfirm$4;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v2}, Lcom/android/settings/MasterClearConfirm;->access$500(Lcom/android/settings/MasterClearConfirm;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/MasterClearConfirm$4;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v3}, Lcom/android/settings/MasterClearConfirm;->access$000(Lcom/android/settings/MasterClearConfirm;)I

    move-result v3

    if-lt v3, v6, :cond_2

    const v3, 0x7f12087f

    goto :goto_2

    :cond_2
    const v3, 0x7f1201fd

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 409
    .end local v1
    :cond_3
    return-void
.end method
