.class Lcom/android/settings/network/PrivateDnsPreferenceController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PrivateDnsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/PrivateDnsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/PrivateDnsPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/network/PrivateDnsPreferenceController;

    .line 149
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 152
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {v0, p2}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$102(Lcom/android/settings/network/PrivateDnsPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 153
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 159
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$102(Lcom/android/settings/network/PrivateDnsPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 160
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$1;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 163
    :cond_0
    return-void
.end method
