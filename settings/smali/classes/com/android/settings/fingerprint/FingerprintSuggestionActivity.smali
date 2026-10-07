.class public Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;
.super Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;
.source "FingerprintSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;-><init>()V

    return-void
.end method

.method static isFingerprintEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    const-string v0, "device_policy"

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 58
    .local v0, "dpManager":Landroid/app/admin/DevicePolicyManager;
    nop

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 60
    .local v1, "dpmFlags":I
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static isNotSingleFingerprintEnrolled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 52
    .local v0, "manager":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {p0}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->isFingerprintEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {p0}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->isNotSingleFingerprintEnrolled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 45
    :goto_1
    return v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->setResult(I)V

    .line 41
    invoke-super {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    .line 42
    return-void
.end method

.method protected initViews()V
    .locals 2

    .line 31
    invoke-super {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->initViews()V

    .line 33
    const v0, 0x7f0a0195

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    .local v0, "cancelButton":Landroid/widget/Button;
    const v1, 0x7f120c87

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 35
    return-void
.end method
