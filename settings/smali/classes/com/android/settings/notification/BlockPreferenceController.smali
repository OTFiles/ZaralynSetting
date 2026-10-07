.class public Lcom/android/settings/notification/BlockPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "BlockPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "importanceListener"    # Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;
    .param p3, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 45
    iput-object p2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    .line 46
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "block"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    return v1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockPreferenceController;->isChannelBlockable()Z

    move-result v0

    return v0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockPreferenceController;->isChannelGroupBlockable()Z

    move-result v0

    return v0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 95
    xor-int/lit8 v0, p2, 0x1

    .line 96
    .local v0, "blocked":Z
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 97
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    .line 101
    .local v1, "originalImportance":I
    if-nez v0, :cond_0

    if-nez v1, :cond_3

    .line 102
    :cond_0
    if-eqz v0, :cond_1

    .line 103
    move v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockPreferenceController;->isDefaultChannel()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, -0x3e8

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    .line 104
    .local v4, "importance":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v5, v4}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockPreferenceController;->saveChannel()V

    .line 107
    .end local v4
    :cond_3
    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v6, v6, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eq v4, v0, :cond_5

    .line 109
    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput-boolean v0, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 110
    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v6, v6, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    if-nez v0, :cond_4

    move v2, v3

    nop

    :cond_4
    invoke-virtual {v4, v5, v6, v2}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    .line 113
    .end local v1
    :cond_5
    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v1, :cond_7

    .line 114
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/notification/NotificationBackend;->updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    goto :goto_1

    .line 116
    :cond_7
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_9

    .line 117
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput-boolean v0, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 118
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    if-nez v0, :cond_8

    move v2, v3

    nop

    :cond_8
    invoke-virtual {v1, v4, v5, v2}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    .line 120
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-virtual {v1}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->onImportanceChanged()V

    .line 121
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    .line 69
    .local v0, "pref":Lcom/android/settings/applications/LayoutPreference;
    const v1, 0x7f0a043c

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SwitchBar;

    iput-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 70
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_4

    .line 71
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v2, 0x7f12099b

    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/SwitchBar;->setTextTitleById(II)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120142

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/SwitchBar;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 79
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 84
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    move v2, v3

    goto :goto_1

    .line 84
    :cond_0
    nop

    .line 83
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_2

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_2

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 91
    :cond_4
    :goto_2
    return-void
.end method
