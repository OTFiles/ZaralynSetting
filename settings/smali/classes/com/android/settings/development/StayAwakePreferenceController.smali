.class public Lcom/android/settings/development/StayAwakePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "StayAwakePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;
    }
.end annotation


# static fields
.field static final SETTING_VALUE_OFF:I = 0x0

.field static final SETTING_VALUE_ON:I = 0x7


# instance fields
.field private mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field mSettingsObserver:Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 60
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 63
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/StayAwakePreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/StayAwakePreferenceController;

    .line 40
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/development/StayAwakePreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/StayAwakePreferenceController;

    .line 40
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-object v0
.end method


# virtual methods
.method checkIfMaximumTimeToLockSetByAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    return-object v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 72
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/development/StayAwakePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 74
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "keep_screen_on"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 120
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 124
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mSettingsObserver:Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mSettingsObserver:Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->register(Z)V

    .line 116
    return-void

    .line 113
    :cond_1
    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 78
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 79
    .local v0, "stayAwake":Z
    iget-object v1, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    .line 81
    if-eqz v0, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 79
    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mSettingsObserver:Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;-><init>(Lcom/android/settings/development/StayAwakePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mSettingsObserver:Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mSettingsObserver:Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->register(Z)V

    .line 108
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/development/StayAwakePreferenceController;->checkIfMaximumTimeToLockSetByAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 88
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 90
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 96
    .local v1, "stayAwakeMode":I
    iget-object v2, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 97
    return-void
.end method
