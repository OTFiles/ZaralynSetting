.class public Lcom/android/settings/enterprise/FailedPasswordWipeCurrentUserPreferenceController;
.super Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;
.source "FailedPasswordWipeCurrentUserPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected getMaximumFailedPasswordsBeforeWipe()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/settings/enterprise/FailedPasswordWipeCurrentUserPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getMaximumFailedPasswordsBeforeWipeInCurrentUser()I

    move-result v0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "failed_password_wipe_current_user"

    return-object v0
.end method
