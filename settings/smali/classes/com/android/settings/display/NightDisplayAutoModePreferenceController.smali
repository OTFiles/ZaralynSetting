.class public Lcom/android/settings/display/NightDisplayAutoModePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NightDisplayAutoModePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mPreference:Landroid/support/v7/preference/DropDownPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v0, p1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 36
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 7
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mPreference:Landroid/support/v7/preference/DropDownPreference;

    .line 49
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mPreference:Landroid/support/v7/preference/DropDownPreference;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mContext:Landroid/content/Context;

    .line 50
    const v4, 0x7f120924

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mContext:Landroid/content/Context;

    .line 51
    const v5, 0x7f120923

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mContext:Landroid/content/Context;

    .line 52
    const v6, 0x7f120926

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 49
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mPreference:Landroid/support/v7/preference/DropDownPreference;

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 55
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 56
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 57
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 54
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setAutoMode(I)Z

    move-result v0

    return v0
.end method

.method public final updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 63
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mPreference:Landroid/support/v7/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 64
    return-void
.end method
