.class Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiTetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->initWifiTetherSoftApManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .line 128
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumClientsChanged(I)V
    .locals 8
    .param p1, "numClients"    # I

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .line 138
    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isExtendingWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "Extending Wifi-Coverage: "

    .local v0, "extendWifiSummary":Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v0
    :cond_0
    const-string v0, ""

    .line 147
    .restart local v0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    iget-object v1, v1, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-static {v3}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100041

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 147
    invoke-virtual {v3, v4, p1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    .end local v0
    :cond_1
    return-void
.end method

.method public onStateChanged(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "failureReason"    # I

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->access$002(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;I)I

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->handleWifiApStateChanged(II)V

    .line 133
    return-void
.end method
