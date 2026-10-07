.class public abstract Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "FingerprintEnrollBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 125
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 126
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    :cond_0
    return-object v0
.end method

.method protected getLayout()Lcom/android/setupwizardlib/GlifLayout;
    .locals 1

    .line 87
    const v0, 0x7f0a03c6

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/GlifLayout;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .line 108
    const v0, 0x7f0a029d

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected initViews()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    .line 81
    .local v0, "nextButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 64
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onNextButtonClick()V

    .line 116
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    .line 53
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    if-nez v0, :cond_0

    .line 54
    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mUserId:I

    .line 58
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 0

    .line 119
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->initViews()V

    .line 76
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 70
    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->setHeaderText(IZ)V

    .line 105
    return-void
.end method

.method protected setHeaderText(IZ)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 92
    .local v0, "layoutTitle":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 93
    .local v1, "previousTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 94
    .local v2, "title":Ljava/lang/CharSequence;
    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_2

    .line 95
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    :cond_2
    return-void
.end method
