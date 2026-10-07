.class public Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;
    }
.end annotation


# instance fields
.field protected mConfigWarningPreference:Landroid/support/v7/preference/Preference;

.field private mInitialSetting:Z

.field private mLaunchFromSuw:Z

.field protected mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mLaunchFromSuw:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mInitialSetting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private updateConfigurationWarningIfNeeded()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 228
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getConfigurationWarningStringForSecureSettingsKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 230
    .local v0, "warningMessage":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 234
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 166
    const/4 v0, 0x7

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    new-instance v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    .line 133
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setSelectable(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setPersistent(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    const v2, 0x7f0d00de

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setLayoutResource(I)V

    .line 137
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    .line 138
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f08022f

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 144
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 145
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setOrder(I)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 148
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mConfigWarningPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 149
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 3

    .line 182
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isChecked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 187
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->setChecked(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 177
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->updateConfigurationWarningIfNeeded()V

    .line 178
    return-void
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arguments"    # Landroid/os/Bundle;

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 198
    if-nez p1, :cond_0

    .line 199
    return-void

    .line 202
    :cond_0
    const-string v0, "video_resource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setVisible(Z)V

    .line 204
    const-string v0, "video_resource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 206
    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mVideoPreference:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->setVisible(Z)V

    .line 210
    :goto_0
    const-string v0, "from_suw"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    const-string v0, "from_suw"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mLaunchFromSuw:Z

    .line 214
    :cond_2
    const-string v0, "checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    const-string v0, "checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mInitialSetting:Z

    .line 218
    :cond_3
    const-string v0, "title_res"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    const-string v0, "title_res"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, "titleRes":I
    if-lez v0, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 224
    .end local v0
    :cond_4
    return-void
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 1

    .line 191
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    .line 192
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 193
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 153
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a04d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 156
    .local v0, "videoView":Landroid/widget/VideoView;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->updateConfigurationWarningIfNeeded()V

    .line 161
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 171
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 172
    return-void
.end method
