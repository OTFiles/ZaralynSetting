.class public Lcom/android/settings/development/SecondaryDisplayPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SecondaryDisplayPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->mListValues:[Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->mListSummaries:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method private updateSecondaryDisplayDevicesOptions()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 71
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 72
    iget-object v3, p0, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    move v1, v2

    .line 74
    goto :goto_1

    .line 71
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v2
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    .line 78
    .local v2, "listPreference":Landroid/support/v7/preference/ListPreference;
    iget-object v3, p0, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method private writeSecondaryDisplayDevicesOption(Ljava/lang/String;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    invoke-direct {p0}, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->updateSecondaryDisplayDevicesOptions()V

    .line 86
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "overlay_display_devices"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->writeSecondaryDisplayDevicesOption(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->writeSecondaryDisplayDevicesOption(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 58
    invoke-direct {p0}, Lcom/android/settings/development/SecondaryDisplayPreferenceController;->updateSecondaryDisplayDevicesOptions()V

    .line 59
    return-void
.end method
