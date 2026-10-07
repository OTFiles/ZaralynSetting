.class Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$4;
.super Ljava/lang/Object;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    .line 99
    iput-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$4;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$4;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 107
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 108
    const v1, 0x7f1210c4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 112
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$4;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->access$000(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    .line 103
    return-void
.end method
