.class public Lcom/android/settings/security/CredentialStoragePreferenceController;
.super Lcom/android/settings/security/RestrictedEncryptionPreferenceController;
.source "CredentialStoragePreferenceController.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const-string v0, "no_config_credentials"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CredentialStoragePreferenceController;->mKeyStore:Landroid/security/KeyStore;

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/security/CredentialStoragePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 36
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "credential_storage_type"

    return-object v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 45
    iget-object v0, p0, Lcom/android/settings/security/CredentialStoragePreferenceController;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const v0, 0x7f120410

    goto :goto_0

    .line 47
    :cond_0
    const v0, 0x7f120411

    .line 45
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 48
    return-void
.end method
