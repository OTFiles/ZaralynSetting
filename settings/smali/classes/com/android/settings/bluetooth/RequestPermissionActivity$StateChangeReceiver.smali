.class final Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 3

    .line 361
    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 362
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$RequestPermissionActivity$StateChangeReceiver$q4ZilZjRzY7SLoogXiJIIa__yMA;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/-$$Lambda$RequestPermissionActivity$StateChangeReceiver$q4ZilZjRzY7SLoogXiJIIa__yMA;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->access$200(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    .line 366
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 370
    if-nez p2, :cond_0

    .line 371
    return-void

    .line 373
    :cond_0
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 375
    .local v0, "currentState":I
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->access$000(Lcom/android/settings/bluetooth/RequestPermissionActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 384
    :pswitch_0    # 0x3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->access$100(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    goto :goto_0

    .line 378
    :pswitch_1    # 0x2 0x1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$StateChangeReceiver;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->access$100(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    .line 389
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method
