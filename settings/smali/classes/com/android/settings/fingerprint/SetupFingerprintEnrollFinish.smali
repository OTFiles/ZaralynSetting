.class public Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;
.super Lcom/android/settings/fingerprint/FingerprintEnrollFinish;
.source "SetupFingerprintEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 34
    iget v1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 35
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 38
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 50
    const/16 v0, 0xf8

    return v0
.end method

.method protected initViews()V
    .locals 2

    .line 43
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->initViews()V

    .line 44
    const v0, 0x7f0a029d

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 45
    .local v0, "nextButton":Landroid/widget/Button;
    const v1, 0x7f120907

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 46
    return-void
.end method
