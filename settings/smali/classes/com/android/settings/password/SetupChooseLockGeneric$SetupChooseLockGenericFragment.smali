.class public Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
.super Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.source "SetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockGenericFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addHeaderView()V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 107
    const v0, 0x7f0d01a6

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setHeaderView(I)V

    goto :goto_0

    .line 109
    :cond_0
    const v0, 0x7f0d01a7

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setHeaderView(I)V

    .line 111
    :goto_0
    return-void
.end method

.method protected addPreferences()V
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-super {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    goto :goto_0

    .line 162
    :cond_0
    const v0, 0x7f15009c

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 164
    :goto_0
    return-void
.end method

.method protected canRunBeforeDeviceProvisioned()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 2
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .line 152
    const/high16 v0, 0x10000

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 154
    .local v0, "newQuality":I
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 155
    return-void
.end method

.method protected getFindSensorIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 208
    return-object v0
.end method

.method protected getLockPasswordIntent(III)Landroid/content/Intent;
    .locals 2
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .line 181
    nop

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(III)Landroid/content/Intent;

    move-result-object v1

    .line 181
    invoke-static {v0, v1}, Lcom/android/settings/password/SetupChooseLockPassword;->modifyIntentForSetup(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 184
    return-object v0
.end method

.method protected getLockPatternIntent()Landroid/content/Intent;
    .locals 2

    .line 189
    nop

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent()Landroid/content/Intent;

    move-result-object v1

    .line 189
    invoke-static {v0, v1}, Lcom/android/settings/password/SetupChooseLockPattern;->modifyIntentForSetup(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 192
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 115
    if-nez p3, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object p3, v0

    .line 120
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v1, ":settings:password_quality"

    .line 122
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    .line 121
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 130
    move-object v0, p2

    check-cast v0, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    .line 131
    .local v0, "layout":Lcom/android/setupwizardlib/GlifPreferenceLayout;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    return-object v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 168
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "key":Ljava/lang/String;
    const-string v1, "unlock_set_do_later"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:frp_supported"

    const/4 v3, 0x0

    .line 172
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 171
    invoke-static {v1}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(Z)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object v1

    .line 173
    .local v1, "dialog":Lcom/android/settings/password/SetupSkipDialog;
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    .line 174
    const/4 v2, 0x1

    return v2

    .line 176
    .end local v1
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    move-object v0, p1

    check-cast v0, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    .line 86
    .local v0, "layout":Lcom/android/setupwizardlib/GlifPreferenceLayout;
    new-instance v1, Lcom/android/settings/utils/SettingsDividerItemDecoration;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/utils/SettingsDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setDividerInset(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080196

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-boolean v1, p0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v1, :cond_0

    .line 93
    const v1, 0x7f1207ee

    goto :goto_0

    :cond_0
    const v1, 0x7f120cd8

    .line 94
    .local v1, "titleResource":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 98
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setHeaderText(I)V

    .line 101
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 102
    return-void
.end method
