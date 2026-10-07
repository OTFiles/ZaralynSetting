.class Lcom/android/settings/wifi/WifiStatusTest$3;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiStatusTest;

    .line 174
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$600(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 178
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiStatusTest;->access$600(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiStatusTest;->access$700(Lcom/android/settings/wifi/WifiStatusTest;I)V

    .line 179
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiStatusTest;->access$800(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiStatusTest;->access$900(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 182
    .local v1, "ipAddr":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 183
    .local v2, "ipBuf":Ljava/lang/StringBuffer;
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 v4, v1, 0x8

    move v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 184
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 v4, v1, 0x8

    move v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 185
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 v3, v1, 0x8

    move v1, v3

    and-int/lit16 v3, v3, 0xff

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 188
    iget-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiStatusTest;->access$1000(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiStatusTest;->access$1100(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Mbps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiStatusTest;->access$1200(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiStatusTest;->access$1300(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiStatusTest;->access$1400(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiStatusTest;->access$1500(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .line 196
    .local v3, "supplicantState":Landroid/net/wifi/SupplicantState;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v4, v3}, Lcom/android/settings/wifi/WifiStatusTest;->access$1600(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;)V

    .line 197
    return-void
.end method
