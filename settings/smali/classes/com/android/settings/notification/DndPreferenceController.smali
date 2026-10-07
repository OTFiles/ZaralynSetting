.class public Lcom/android/settings/notification/DndPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "DndPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "bypass_dnd"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/DndPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/DndPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 65
    .local v0, "bypassZenMode":Z
    iget-object v2, p0, Lcom/android/settings/notification/DndPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 66
    iget-object v2, p0, Lcom/android/settings/notification/DndPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/notification/DndPreferenceController;->saveChannel()V

    .line 69
    .end local v0
    :cond_0
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/DndPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 55
    .local v0, "pref":Lcom/android/settingslib/RestrictedSwitchPreference;
    iget-object v1, p0, Lcom/android/settings/notification/DndPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/notification/DndPreferenceController;->isChannelConfigurable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 57
    iget-object v1, p0, Lcom/android/settings/notification/DndPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 59
    .end local v0
    :cond_1
    return-void
.end method
