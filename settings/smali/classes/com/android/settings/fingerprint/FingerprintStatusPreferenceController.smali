.class public Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FingerprintStatusPreferenceController.java"


# static fields
.field private static final KEY_FINGERPRINT_SETTINGS:Ljava/lang/String; = "fingerprint_settings"


# instance fields
.field protected final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected final mProfileChallengeUserId:I

.field protected final mUm:Landroid/os/UserManager;

.field protected final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const-string v0, "fingerprint_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mUserId:I

    .line 53
    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 54
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mUm:Landroid/os/UserManager;

    .line 55
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    .line 57
    invoke-interface {v0, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 58
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mUm:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mProfileChallengeUserId:I

    .line 59
    return-void
.end method

.method static synthetic lambda$updateState$0(ILjava/lang/String;Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p0, "userId"    # I
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "target"    # Landroid/support/v7/preference/Preference;

    .line 101
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 103
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-static {v0, v1, p0}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const/4 v2, 0x0

    return v2

    .line 107
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 63
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mIsAvailable:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 64
    return v1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->isUserSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_2
    return v1

    .line 67
    :cond_3
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method protected getUserId()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mUserId:I

    return v0
.end method

.method protected isUserSupported()Z
    .locals 1

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 82
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->getUserId()I

    move-result v2

    .line 87
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    .line 88
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v1

    .line 90
    .local v4, "fingerprintCount":I
    :goto_0
    if-lez v4, :cond_3

    .line 91
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100034

    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v1

    .line 91
    invoke-virtual {v5, v6, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    const-class v0, Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/String;
    goto :goto_1

    .line 96
    .end local v0
    :cond_3
    const v0, 0x7f120c98

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 98
    const-class v0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0
    :goto_1
    new-instance v1, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintStatusPreferenceController$KyR_IBe4qHxX_KvME9NBxSJFxFQ;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintStatusPreferenceController$KyR_IBe4qHxX_KvME9NBxSJFxFQ;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    return-void
.end method
