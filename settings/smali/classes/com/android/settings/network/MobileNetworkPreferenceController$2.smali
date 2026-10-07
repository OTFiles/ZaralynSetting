.class Lcom/android/settings/network/MobileNetworkPreferenceController$2;
.super Landroid/telephony/PhoneStateListener;
.source "MobileNetworkPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/MobileNetworkPreferenceController;->onStart()V
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

    .line 112
    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 115
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->access$000(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {v1}, Lcom/android/settings/network/MobileNetworkPreferenceController;->access$100(Lcom/android/settings/network/MobileNetworkPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileNetworkPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 117
    return-void
.end method
