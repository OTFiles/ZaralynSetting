.class Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiTetherSwitchBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    .line 113
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "wifi_state"

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 120
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {v2, v1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;I)V

    .line 121
    .end local v1
    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    .line 124
    :cond_1
    :goto_0
    return-void
.end method
