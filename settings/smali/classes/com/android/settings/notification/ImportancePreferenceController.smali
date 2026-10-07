.class public Lcom/android/settings/notification/ImportancePreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "ImportancePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "importanceListener"    # Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;
    .param p3, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 45
    iput-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    .line 46
    return-void
.end method


# virtual methods
.method protected getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .locals 4
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .line 115
    const-string v0, ""

    .line 116
    .local v0, "summary":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    .line 117
    .local v1, "importance":I
    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_2

    const v2, 0x7f120967

    packed-switch v1, :pswitch_data_0

    .line 143
    const-string v2, ""

    return-object v2

    .line 136
    :pswitch_0    # 0x5 0x4
    invoke-static {p1}, Lcom/android/settings/notification/SoundPreferenceController;->hasValidSound(Landroid/app/NotificationChannel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120964

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120965

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    goto :goto_0

    .line 128
    :pswitch_1    # 0x3
    invoke-static {p1}, Lcom/android/settings/notification/SoundPreferenceController;->hasValidSound(Landroid/app/NotificationChannel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120961

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    goto :goto_0

    .line 125
    :pswitch_2    # 0x2
    iget-object v3, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    goto :goto_0

    .line 122
    :pswitch_3    # 0x1
    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120969

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    goto :goto_0

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f12096c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    nop

    .line 146
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3    # 0x1
        :pswitch_2    # 0x2
        :pswitch_1    # 0x3
        :pswitch_0    # 0x4
        :pswitch_0    # 0x5
    .end packed-switch
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "importance"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 55
    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    return v1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    .line 59
    return v1

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreferenceController;->isDefaultChannel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    .line 92
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "importance":I
    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 99
    invoke-static {v1}, Lcom/android/settings/notification/SoundPreferenceController;->hasValidSound(Landroid/app/NotificationChannel;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lt v0, v2, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 102
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 101
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreferenceController;->saveChannel()V

    .line 109
    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-virtual {v1}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->onImportanceChanged()V

    .line 111
    .end local v0
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreferenceController;->isChannelConfigurable()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ImportancePreferenceController;->getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v0, 0x4

    .line 71
    .local v0, "importances":I
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 72
    .local v2, "entries":[Ljava/lang/CharSequence;
    new-array v3, v0, [Ljava/lang/CharSequence;

    .line 74
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 75
    .local v4, "index":I
    const/4 v5, 0x4

    .local v5, "i":I
    :goto_1
    if-lt v5, v1, :cond_1

    .line 76
    new-instance v6, Landroid/app/NotificationChannel;

    const-string v7, ""

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 77
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ImportancePreferenceController;->getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    .line 78
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 75
    .end local v6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 82
    .end local v5
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/settings/RestrictedListPreference;

    .line 83
    .local v1, "pref":Lcom/android/settings/RestrictedListPreference;
    invoke-virtual {v1, v2}, Lcom/android/settings/RestrictedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v1, v3}, Lcom/android/settings/RestrictedListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 85
    iget-object v5, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    .line 87
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :cond_2
    return-void
.end method
