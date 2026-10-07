.class public Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "EncryptionInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionInterstitialFragment"
.end annotation


# instance fields
.field private mDontRequirePasswordToDecrypt:Landroid/view/View;

.field private mPasswordRequired:Z

.field private mRequestedPasswordQuality:I

.field private mRequirePasswordToDecrypt:Landroid/view/View;

.field private mUnlockMethodIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;
    .param p1, "x1"    # Z

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    return-void
.end method

.method private setRequirePasswordState(Z)V
    .locals 0
    .param p1, "required"    # Z

    .line 192
    iput-boolean p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    .line 193
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 197
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 203
    :goto_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 100
    const/16 v0, 0x30

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 165
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->finish()V

    .line 169
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecrypt:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 175
    .local v0, "accEn":Z
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    if-nez v2, :cond_0

    .line 176
    invoke-direct {p0, v1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 177
    iget v1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    invoke-static {v1}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->newInstance(I)Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;

    move-result-object v1

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "AccessibilityWarningDialog"

    .line 178
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    .line 185
    .end local v0
    :goto_0
    goto :goto_1

    .line 186
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    .line 189
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 106
    const v0, 0x7f0d00a2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 111
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 113
    const v0, 0x7f0a0164

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecrypt:Landroid/view/View;

    .line 114
    const v0, 0x7f0a0163

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecrypt:Landroid/view/View;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "for_fingerprint"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 117
    .local v0, "forFingerprint":Z
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "extra_password_quality"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    .line 119
    const-string v2, "extra_unlock_method_intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    .line 121
    iget v2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    const/high16 v3, 0x10000

    if-eq v2, v3, :cond_3

    const/high16 v3, 0x20000

    if-eq v2, v3, :cond_1

    const/high16 v3, 0x30000

    if-eq v2, v3, :cond_1

    .line 134
    if-eqz v0, :cond_0

    .line 135
    const v2, 0x7f1205c4

    goto :goto_2

    .line 136
    :cond_0
    const v2, 0x7f1205c3

    goto :goto_2

    .line 129
    :cond_1
    if-eqz v0, :cond_2

    .line 130
    const v2, 0x7f1205c8

    goto :goto_0

    .line 131
    :cond_2
    const v2, 0x7f1205c7

    .line 132
    .local v2, "msgId":I
    :goto_0
    goto :goto_2

    .line 123
    .end local v2
    :cond_3
    if-eqz v0, :cond_4

    .line 124
    const v2, 0x7f1205c6

    goto :goto_1

    .line 125
    :cond_4
    const v2, 0x7f1205c5

    .line 126
    .restart local v2
    :goto_1
    nop

    .line 136
    :goto_2
    nop

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0165

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 140
    .local v3, "message":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v4, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecrypt:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v4, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecrypt:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_require_password"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 148
    move-object v4, p1

    check-cast v4, Lcom/android/setupwizardlib/GlifLayout;

    .line 149
    .local v4, "layout":Lcom/android/setupwizardlib/GlifLayout;
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method protected startLockIntent()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    const-string v1, "extra_require_password"

    iget-boolean v2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {}, Lcom/android/settings/EncryptionInterstitial;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no unlock intent to start"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->finish()V

    .line 160
    :goto_0
    return-void
.end method
