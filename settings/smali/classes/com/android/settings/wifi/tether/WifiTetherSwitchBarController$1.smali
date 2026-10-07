.class Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
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

    .line 52
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Lcom/android/settings/widget/SwitchWidgetController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    .line 58
    return-void
.end method
