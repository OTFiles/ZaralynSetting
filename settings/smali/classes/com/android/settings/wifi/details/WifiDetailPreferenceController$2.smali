.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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

    .line 178
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z
    .locals 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "cap"    # I

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$600(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    const/16 v0, 0x10

    invoke-direct {p0, p2, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x11

    .line 202
    invoke-direct {p0, p2, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$700(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0, p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$602(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 208
    :cond_2
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$400(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0, p2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$402(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$500(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 185
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$300(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$800(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 215
    :cond_0
    return-void
.end method
