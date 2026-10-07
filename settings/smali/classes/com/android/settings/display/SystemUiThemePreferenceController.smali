.class public Lcom/android/settings/display/SystemUiThemePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SystemUiThemePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mSystemUiThemePref:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/display/SystemUiThemePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mSystemUiThemePref:Landroid/support/v7/preference/ListPreference;

    .line 55
    iget-object v0, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mSystemUiThemePref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "settings_systemui_theme"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 48
    .local v0, "enabled":Z
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mSystemUiThemePref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 71
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mSystemUiThemePref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v1

    return-object v2
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 61
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/display/SystemUiThemePreferenceController;->refreshSummary(Landroid/support/v7/preference/Preference;)V

    .line 64
    const/4 v1, 0x1

    return v1
.end method
