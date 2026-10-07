.class Lcom/android/settings/network/MobileNetworkPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/MobileNetworkPreferenceController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/network/MobileNetworkPreferenceController;

    .line 72
    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$1;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$1;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->access$000(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$1;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$1;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {v1}, Lcom/android/settings/network/MobileNetworkPreferenceController;->access$100(Lcom/android/settings/network/MobileNetworkPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileNetworkPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 77
    return-void
.end method
