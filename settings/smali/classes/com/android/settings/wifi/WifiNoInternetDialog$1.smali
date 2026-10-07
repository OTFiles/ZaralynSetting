.class Lcom/android/settings/wifi/WifiNoInternetDialog$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiNoInternetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiNoInternetDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiNoInternetDialog;

    .line 88
    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "WifiNoInternetDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiNoInternetDialog;->access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " validated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->finish()V

    .line 104
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "WifiNoInternetDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiNoInternetDialog;->access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->finish()V

    .line 96
    :cond_0
    return-void
.end method
