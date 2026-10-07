.class public Lcom/android/settings/notification/BadgePreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "BadgePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "badge"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 49
    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    return v1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    .line 53
    return v1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notification_badging"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 57
    return v1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/notification/BadgePreferenceController;->isDefaultChannel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    return v3

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    return v0

    .line 66
    :cond_4
    return v3
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 84
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 85
    .local v0, "showBadge":Z
    iget-object v1, p0, Lcom/android/settings/notification/BadgePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/settings/notification/BadgePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/notification/BadgePreferenceController;->saveChannel()V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput-boolean v0, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    .line 90
    iget-object v1, p0, Lcom/android/settings/notification/BadgePreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/notification/NotificationBackend;->setShowBadge(Ljava/lang/String;IZ)Z

    .line 92
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 72
    .local v0, "pref":Lcom/android/settingslib/RestrictedSwitchPreference;
    iget-object v1, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/notification/BadgePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/android/settings/notification/BadgePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/notification/BadgePreferenceController;->isChannelConfigurable()Z

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

    goto :goto_1

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/BadgePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 80
    .end local v0
    :cond_2
    :goto_1
    return-void
.end method
