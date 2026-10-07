.class Lcom/android/settings/vpn2/VpnSettings$1;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Lcom/android/settings/widget/GearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/vpn2/VpnSettings;

    .line 408
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 4
    .param p1, "p"    # Lcom/android/settings/widget/GearPreference;

    .line 411
    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v0, :cond_0

    .line 412
    move-object v0, p1

    check-cast v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    .line 413
    .local v0, "pref":Lcom/android/settings/vpn2/LegacyVpnPreference;
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v3}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 415
    .end local v0
    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_1

    .line 416
    move-object v0, p1

    check-cast v0, Lcom/android/settings/vpn2/AppPreference;

    .line 417
    .local v0, "pref":Lcom/android/settings/vpn2/AppPreference;
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v1}, Lcom/android/settings/vpn2/VpnSettings;->access$000(Lcom/android/settings/vpn2/VpnSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings$1;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v2}, Lcom/android/settings/vpn2/VpnSettings;->getMetricsCategory()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/settings/vpn2/AppManagementFragment;->show(Landroid/content/Context;Lcom/android/settings/vpn2/AppPreference;I)V

    .line 419
    .end local v0
    :cond_1
    :goto_0
    return-void
.end method
