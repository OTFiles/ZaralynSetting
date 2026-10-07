.class public Lcom/android/settings/deviceinfo/IpAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;
.source "IpAddressPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 34
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
