.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 151
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x16fd136b

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const v2, -0x147b62d9

    if-eq v1, v2, :cond_1

    const v2, 0x60e99352

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 156
    :pswitch_0    # 0x0
    const-string v0, "multipleChanges"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 159
    const-string v0, "wifiConfiguration"

    .line 160
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 161
    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$000(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$102(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 168
    .end local v0
    :cond_4
    :pswitch_1    # 0x2 0x1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$200(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 171
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0    # 0x0
        :pswitch_1    # 0x1
        :pswitch_1    # 0x2
    .end packed-switch
.end method
