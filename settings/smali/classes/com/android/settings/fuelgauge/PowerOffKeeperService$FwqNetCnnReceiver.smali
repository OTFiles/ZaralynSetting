.class public Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffKeeperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerOffKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FwqNetCnnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 758
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 761
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "action":Ljava/lang/String;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=========divhee=========FwqConnectionReceiver========"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 765
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->isNowCanUpdateDataFromFwq()I

    move-result v1

    .line 768
    .local v1, "iNowCanUpdateStatus":I
    if-lez v1, :cond_0

    .line 769
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$100(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$700(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 770
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$100(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$700(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 773
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 772
    :catch_0
    move-exception v1

    .line 776
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 778
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "readboy_pad_now_is_in_factory"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 779
    .local v1, "isInFactory":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .end local v1
    goto :goto_2

    .line 781
    .restart local v1
    :cond_2
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v2

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v2, v3, :cond_5

    .line 784
    :try_start_2
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 785
    .local v2, "wifi_service":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 786
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-string v5, ""

    .line 787
    .local v5, "ssidName":Ljava/lang/String;
    :goto_1
    const-string v6, "readboy_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 788
    invoke-static {}, Lcom/android/settings/AutoPreInstallFtpListApkService;->downloadIsFactoryFromFwqAboutPadSettings()V

    .line 792
    .end local v2
    .end local v4
    .end local v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    goto :goto_2

    .line 790
    :catch_1
    move-exception v2

    .line 791
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 795
    .end local v1
    .end local v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_2
    goto :goto_3

    .line 794
    :catch_2
    move-exception v1

    .line 799
    :cond_6
    :goto_3
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->needRequestNormalPadZxsModel()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 800
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$800()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver$1;-><init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService$FwqNetCnnReceiver;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 808
    :cond_7
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 810
    :try_start_4
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 811
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .end local v1
    goto :goto_4

    .line 813
    .restart local v1
    :pswitch_0    # 0x3
    invoke-static {}, Lcom/android/settings/AutoPreInstallFtpListApkService;->autoLinkEspReadboyHotspot()V

    .line 814
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 816
    :pswitch_1    # 0x2
    goto :goto_4

    .line 820
    :pswitch_2    # 0x1
    goto :goto_4

    .line 818
    :pswitch_3    # 0x0
    nop

    .line 826
    .end local v1
    :goto_4
    goto :goto_5

    .line 824
    :catch_3
    move-exception v1

    .line 825
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 828
    .end local v1
    :cond_8
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method
