.class public Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final mAutoclickPreferenceSummaries:[I


# instance fields
.field private mDelay:Lcom/android/settings/widget/SeekBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100003
        0x7f100007
        0x7f100005
        0x7f100004
        0x7f100006
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private delayToSeekBarProgress(I)I
    .locals 1
    .param p1, "delay"    # I

    .line 178
    add-int/lit16 v0, p1, -0xc8

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method static getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "delay"    # I

    .line 74
    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummaryIndex(I)I

    move-result v0

    .line 75
    .local v0, "summaryIndex":I
    sget-object v1, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 75
    invoke-virtual {p0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAutoclickPreferenceSummaryIndex(I)I
    .locals 2
    .param p0, "delay"    # I

    .line 83
    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_1

    .line 87
    sget-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 89
    :cond_1
    const/16 v0, 0x320

    sget-object v1, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    .line 91
    .local v0, "rangeSize":I
    add-int/lit16 v1, p0, -0xc8

    div-int/2addr v1, v0

    return v1
.end method

.method private seekBarProgressToDelay(I)I
    .locals 1
    .param p1, "progress"    # I

    .line 170
    mul-int/lit8 v0, p1, 0x64

    add-int/lit16 v0, v0, 0xc8

    return v0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 107
    const v0, 0x7f1206b7

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 102
    const/16 v0, 0x14f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 112
    const v0, 0x7f150001

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    nop

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_delay"

    .line 119
    const/16 v2, 0x258

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 125
    .local v0, "delay":I
    const-string v1, "autoclick_delay"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    .line 126
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v2, 0x3e8

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->delayToSeekBarProgress(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->delayToSeekBarProgress(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v1

    .line 130
    const v2, 0x7f120047

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 131
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 5

    .line 135
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    if-ne v0, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    .line 142
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_delay"

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    .line 160
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->seekBarProgressToDelay(I)I

    move-result v2

    .line 158
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    .line 98
    return-void
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 148
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 152
    const-string v0, "accessibility_autoclick_enabled"

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 153
    return-void
.end method
