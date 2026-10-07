.class public Lcom/android/settings/enterprise/CaCertsManagedProfilePreferenceController;
.super Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;
.source "CaCertsManagedProfilePreferenceController.java"


# static fields
.field static final CA_CERTS_MANAGED_PROFILE:Ljava/lang/String; = "ca_certs_managed_profile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getNumberOfCaCerts()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/settings/enterprise/CaCertsManagedProfilePreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getNumberOfOwnerInstalledCaCertsForManagedProfile()I

    move-result v0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "ca_certs_managed_profile"

    return-object v0
.end method
