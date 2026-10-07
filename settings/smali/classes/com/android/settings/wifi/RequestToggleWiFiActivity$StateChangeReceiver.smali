.class final Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RequestToggleWiFiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/RequestToggleWiFiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateChangeReceiver"
.end annotation


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V
    .locals 1

    .line 285
    iput-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 286
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;Lcom/android/settings/wifi/RequestToggleWiFiActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/RequestToggleWiFiActivity;
    .param p2, "x1"    # Lcom/android/settings/wifi/RequestToggleWiFiActivity$1;

    .line 285
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;-><init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    .line 299
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-static {v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->access$100(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 303
    .local v1, "currentState":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 313
    :pswitch_0    # 0x0
    const v2, 0x7f1210c0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 314
    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-virtual {v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    goto :goto_0

    .line 306
    :cond_1
    :pswitch_1    # 0x1
    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->access$200(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->access$200(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    .line 308
    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-virtual {v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    .line 317
    :cond_3
    :goto_0
    return-void

    .line 300
    .end local v1
    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0    # 0x0
        :pswitch_1    # 0x1
    .end packed-switch
.end method

.method public register()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 295
    return-void
.end method
