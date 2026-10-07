.class public Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;
.super Ljava/lang/Object;
.source "SettingsCleanCachedReceiver.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsCleanCachedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CleanCachedForgetListener"
.end annotation


# instance fields
.field private savedNetworkId:I

.field private savedSsid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/SettingsCleanCachedReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsCleanCachedReceiver;Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/SettingsCleanCachedReceiver;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "networkId"    # I

    .line 508
    iput-object p1, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->this$0:Lcom/android/settings/SettingsCleanCachedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->savedSsid:Ljava/lang/String;

    .line 507
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->savedNetworkId:I

    .line 509
    iput-object p2, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->savedSsid:Ljava/lang/String;

    .line 510
    iput p3, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->savedNetworkId:I

    .line 511
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 540
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->savedSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=======divhee========mmForgetListener=======reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .line 515
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->savedSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "======0=divhee========mmForgetListener=======onSuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->savedNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->this$0:Lcom/android/settings/SettingsCleanCachedReceiver;

    invoke-static {v2}, Lcom/android/settings/SettingsCleanCachedReceiver;->access$000(Lcom/android/settings/SettingsCleanCachedReceiver;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->this$0:Lcom/android/settings/SettingsCleanCachedReceiver;

    invoke-static {v0}, Lcom/android/settings/SettingsCleanCachedReceiver;->access$000(Lcom/android/settings/SettingsCleanCachedReceiver;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->this$0:Lcom/android/settings/SettingsCleanCachedReceiver;

    invoke-static {v0}, Lcom/android/settings/SettingsCleanCachedReceiver;->access$000(Lcom/android/settings/SettingsCleanCachedReceiver;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->savedSsid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->this$0:Lcom/android/settings/SettingsCleanCachedReceiver;

    invoke-static {v0}, Lcom/android/settings/SettingsCleanCachedReceiver;->access$000(Lcom/android/settings/SettingsCleanCachedReceiver;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "inum":I
    :goto_0
    if-ltz v0, :cond_1

    .line 519
    iget-object v1, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->this$0:Lcom/android/settings/SettingsCleanCachedReceiver;

    invoke-static {v1}, Lcom/android/settings/SettingsCleanCachedReceiver;->access$000(Lcom/android/settings/SettingsCleanCachedReceiver;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 520
    .local v1, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->savedSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    iget-object v2, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->this$0:Lcom/android/settings/SettingsCleanCachedReceiver;

    invoke-static {v2}, Lcom/android/settings/SettingsCleanCachedReceiver;->access$000(Lcom/android/settings/SettingsCleanCachedReceiver;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 522
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->savedSsid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "======2=divhee========mmForgetListener=======onSuccess="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->this$0:Lcom/android/settings/SettingsCleanCachedReceiver;

    invoke-static {v4}, Lcom/android/settings/SettingsCleanCachedReceiver;->access$000(Lcom/android/settings/SettingsCleanCachedReceiver;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 528
    .end local v0
    :cond_1
    goto :goto_1

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 530
    .end local v0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->this$0:Lcom/android/settings/SettingsCleanCachedReceiver;

    invoke-static {v0}, Lcom/android/settings/SettingsCleanCachedReceiver;->access$100(Lcom/android/settings/SettingsCleanCachedReceiver;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->this$0:Lcom/android/settings/SettingsCleanCachedReceiver;

    invoke-static {v0}, Lcom/android/settings/SettingsCleanCachedReceiver;->access$100(Lcom/android/settings/SettingsCleanCachedReceiver;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->savedNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 536
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    goto :goto_2

    .line 533
    :catch_1
    move-exception v0

    .line 534
    .restart local v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 535
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->savedSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "==771===divhee====readboyForgotAllWifiHot===mLastSSID====realforget==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/SettingsCleanCachedReceiver$CleanCachedForgetListener;->savedNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v0
    :goto_2
    return-void
.end method
