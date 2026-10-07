.class Lcom/android/settings/wifi/WifiEnablerGuide$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnablerGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnablerGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnablerGuide;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnablerGuide;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiEnablerGuide;

    .line 77
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnablerGuide$1;->this$0:Lcom/android/settings/wifi/WifiEnablerGuide;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide$1;->this$0:Lcom/android/settings/wifi/WifiEnablerGuide;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide$1;->this$0:Lcom/android/settings/wifi/WifiEnablerGuide;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiEnablerGuide;->access$000(Lcom/android/settings/wifi/WifiEnablerGuide;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiEnablerGuide;->access$100(Lcom/android/settings/wifi/WifiEnablerGuide;I)V

    goto :goto_0

    .line 83
    :cond_0
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide$1;->this$0:Lcom/android/settings/wifi/WifiEnablerGuide;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiEnablerGuide;->access$200(Lcom/android/settings/wifi/WifiEnablerGuide;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnablerGuide$1;->this$0:Lcom/android/settings/wifi/WifiEnablerGuide;

    const-string v2, "newState"

    .line 86
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SupplicantState;

    .line 85
    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiEnablerGuide;->access$300(Lcom/android/settings/wifi/WifiEnablerGuide;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 88
    :cond_1
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 91
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide$1;->this$0:Lcom/android/settings/wifi/WifiEnablerGuide;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiEnablerGuide;->access$200(Lcom/android/settings/wifi/WifiEnablerGuide;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnablerGuide$1;->this$0:Lcom/android/settings/wifi/WifiEnablerGuide;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiEnablerGuide;->access$300(Lcom/android/settings/wifi/WifiEnablerGuide;Landroid/net/NetworkInfo$DetailedState;)V

    .line 94
    .end local v1
    :cond_2
    :goto_0
    return-void
.end method
