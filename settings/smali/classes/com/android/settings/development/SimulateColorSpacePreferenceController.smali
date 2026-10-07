.class public Lcom/android/settings/development/SimulateColorSpacePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SimulateColorSpacePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final SETTING_VALUE_OFF:I = 0x0

.field static final SETTING_VALUE_ON:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 10

    .line 71
    iget-object v0, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 75
    .local v1, "enabled":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v4, Landroid/support/v7/preference/ListPreference;

    .line 76
    .local v4, "listPreference":Landroid/support/v7/preference/ListPreference;
    const/4 v5, -0x1

    if-eqz v1, :cond_2

    .line 77
    const-string v6, "accessibility_display_daltonizer"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "mode":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .line 82
    .local v6, "index":I
    if-gez v6, :cond_1

    .line 83
    iget-object v7, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 85
    .local v7, "res":Landroid/content/res/Resources;
    const v8, 0x7f12044a

    new-array v3, v3, [Ljava/lang/Object;

    const v9, 0x7f120051

    .line 86
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v2

    .line 85
    invoke-virtual {v7, v8, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    .end local v7
    goto :goto_1

    .line 88
    :cond_1
    const-string v2, "%s"

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    .end local v5
    .end local v6
    :goto_1
    goto :goto_2

    .line 91
    :cond_2
    nop

    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v4, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 94
    :goto_2
    return-void
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 6

    .line 114
    iget-object v0, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 118
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 119
    const-string v4, "accessibility_display_daltonizer"

    const/4 v5, -0x1

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "mode":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 123
    .local v5, "index":I
    if-ltz v5, :cond_1

    .line 125
    return v3

    .line 128
    .end local v4
    .end local v5
    :cond_1
    return v2
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, "newMode":I
    if-gez v1, :cond_0

    .line 100
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 103
    :cond_0
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    const-string v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "simulate_color_space"

    return-object v0
.end method

.method public onDeveloperOptionsDisabled()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsDisabled()V

    .line 65
    invoke-direct {p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->usingDevelopmentColorSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 53
    invoke-direct {p0, p2}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 59
    invoke-direct {p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->updateSimulateColorSpace()V

    .line 60
    return-void
.end method
