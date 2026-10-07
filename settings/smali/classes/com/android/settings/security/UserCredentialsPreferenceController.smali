.class public Lcom/android/settings/security/UserCredentialsPreferenceController;
.super Lcom/android/settings/security/RestrictedEncryptionPreferenceController;
.source "UserCredentialsPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const-string v0, "no_config_credentials"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "user_credentials"

    return-object v0
.end method
