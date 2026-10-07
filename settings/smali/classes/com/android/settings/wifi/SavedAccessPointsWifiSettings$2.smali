.class Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$2;
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

    .line 74
    iput-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$2;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$2;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->access$000(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    .line 83
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$2;->this$0:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->access$000(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    .line 78
    return-void
.end method
