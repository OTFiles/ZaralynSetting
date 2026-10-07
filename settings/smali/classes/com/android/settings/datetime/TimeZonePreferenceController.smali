.class public Lcom/android/settings/datetime/TimeZonePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimeZonePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mAutoTimeZonePreferenceController:Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

.field private final mZonePickerV2:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/AutoTimeZonePreferenceController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoTimeZonePreferenceController"    # Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mAutoTimeZonePreferenceController:Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    .line 45
    iget-object v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "settings_zone_picker_v2"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mZonePickerV2:Z

    .line 46
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "timezone"

    return-object v0
.end method

.method getTimeZoneOffsetAndName()Ljava/lang/CharSequence;
    .locals 4

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 75
    .local v0, "now":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 75
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/datetime/ZoneGetter;->getTimeZoneOffsetAndName(Landroid/content/Context;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public isAvailable()Z
    .locals 1

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 50
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mZonePickerV2:Z

    if-eqz v0, :cond_1

    .line 54
    const-class v0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datetime/TimeZonePreferenceController;->getTimeZoneOffsetAndName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mAutoTimeZonePreferenceController:Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 60
    :cond_2
    return-void
.end method
