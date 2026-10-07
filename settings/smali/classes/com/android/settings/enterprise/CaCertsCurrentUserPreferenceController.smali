.class public Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;
.super Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;
.source "CaCertsCurrentUserPreferenceController.java"


# static fields
.field static final CA_CERTS_CURRENT_USER:Ljava/lang/String; = "ca_certs_current_user"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected getNumberOfCaCerts()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getNumberOfOwnerInstalledCaCertsForCurrentUser()I

    move-result v0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "ca_certs_current_user"

    return-object v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 40
    iget-object v0, p0, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isInCompMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const v0, 0x7f1205d7

    goto :goto_0

    .line 42
    :cond_0
    const v0, 0x7f1205d6

    .line 40
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 43
    return-void
.end method
