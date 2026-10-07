.class public Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AlwaysOnVpnCurrentUserPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 34
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "always_on_vpn_primary_user"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isAlwaysOnVpnSetInCurrentUser()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 38
    iget-object v0, p0, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isInCompMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const v0, 0x7f1205d1

    goto :goto_0

    .line 40
    :cond_0
    const v0, 0x7f1205d0

    .line 38
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 41
    return-void
.end method
