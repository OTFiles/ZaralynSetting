.class public Lcom/android/settings/fingerprint/FingerprintProfileStatusPreferenceController;
.super Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;
.source "FingerprintProfileStatusPreferenceController.java"


# static fields
.field public static final KEY_FINGERPRINT_SETTINGS:Ljava/lang/String; = "fingerprint_settings_profile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const-string v0, "fingerprint_settings_profile"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getUserId()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProfileStatusPreferenceController;->mProfileChallengeUserId:I

    return v0
.end method

.method protected isUserSupported()Z
    .locals 2

    .line 33
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProfileStatusPreferenceController;->mProfileChallengeUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProfileStatusPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintProfileStatusPreferenceController;->mProfileChallengeUserId:I

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0
.end method
