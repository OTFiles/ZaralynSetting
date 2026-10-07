.class final Lcom/android/settings/password/SetNewPasswordController;
.super Ljava/lang/Object;
.source "SetNewPasswordController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetNewPasswordController$Ui;
    }
.end annotation


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTargetUserId:I

.field private final mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;


# direct methods
.method constructor <init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/SetNewPasswordController$Ui;)V
    .locals 1
    .param p1, "targetUserId"    # I
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "fingerprintManager"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p4, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p5, "ui"    # Lcom/android/settings/password/SetNewPasswordController$Ui;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    .line 94
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    iput-object p3, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 96
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 97
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/SetNewPasswordController$Ui;

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;

    .line 98
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/settings/password/SetNewPasswordController$Ui;Landroid/content/Intent;Landroid/os/IBinder;)Lcom/android/settings/password/SetNewPasswordController;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ui"    # Lcom/android/settings/password/SetNewPasswordController$Ui;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "activityToken"    # Landroid/os/IBinder;

    .line 69
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 70
    .local v0, "userId":I
    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    nop

    .line 72
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 71
    invoke-static {p3, v1, v2, v3}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 73
    .local v1, "callingUserId":I
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 74
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    move v0, v1

    .line 79
    .end local v1
    .end local v2
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v7

    .line 80
    .local v7, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    new-instance v8, Lcom/android/settings/password/SetNewPasswordController;

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v1, "device_policy"

    .line 83
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    move-object v1, v8

    move v2, v0

    move-object v4, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/password/SetNewPasswordController;-><init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/SetNewPasswordController$Ui;)V

    .line 80
    return-object v8
.end method

.method private getFingerprintChooseLockExtras()Landroid/os/Bundle;
    .locals 5

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "chooseLockExtras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v1

    .line 123
    .local v1, "challenge":J
    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string v3, "hide_disabled_prefs"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    const-string v3, "has_challenge"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    const-string v3, "challenge"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 129
    const-string v3, "for_fingerprint"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    return-object v0
.end method

.method private isFingerprintDisabledByAdmin()Z
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 136
    .local v0, "disabledFeatures":I
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public dispatchSetNewPasswordIntent()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 107
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    .line 108
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->isFingerprintDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->getFingerprintChooseLockExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 112
    .end local v0
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .restart local v0
    :goto_0
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;

    invoke-interface {v1, v0}, Lcom/android/settings/password/SetNewPasswordController$Ui;->launchChooseLock(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method
