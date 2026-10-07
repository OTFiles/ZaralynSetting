.class public Lcom/android/settings/fingerprint/FingerprintEnrollFinish;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 91
    const/16 v0, 0xf2

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 81
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->finish()V

    goto :goto_0

    .line 85
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 87
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0030

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f0d00af

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->setContentView(I)V

    .line 40
    const v0, 0x7f120c86

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->setHeaderText(I)V

    .line 41
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 1

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->setResult(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->finish()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 45
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onResume()V

    .line 47
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    .local v0, "addButton":Landroid/widget/Button;
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    .line 50
    .local v1, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v2, 0x0

    .line 51
    .local v2, "hideAddAnother":Z
    if-eqz v1, :cond_1

    .line 52
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 53
    .local v3, "enrolled":I
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 55
    .local v4, "max":I
    if-lt v3, v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v2, v5

    .line 57
    .end local v3
    .end local v4
    :cond_1
    if-eqz v2, :cond_2

    .line 59
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :goto_1
    return-void
.end method
