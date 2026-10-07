.class public Lcom/android/settings/notification/ChannelGroupNotificationSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "ChannelGroupNotificationSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    return-void
.end method

.method private populateChannelList()V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "ChannelGroupSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification channel group posted twice to settings - old size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    .line 83
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 85
    .local v1, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 86
    .end local v1
    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, "empty":Landroid/support/v7/preference/Preference;
    const v1, 0x7f12093d

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 93
    iget-object v1, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v0
    goto :goto_2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mChannelComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 99
    .local v2, "channel":Landroid/app/NotificationChannel;
    iget-object v3, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    .line 99
    invoke-virtual {p0, v4, v2, v5}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v2
    goto :goto_1

    .line 104
    .end local v0
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mControllers:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/HeaderPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/notification/HeaderPreferenceController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/BlockPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/BlockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/AppLinkPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/AppLinkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/NotificationsOffPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/NotificationsOffPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/DescriptionPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/DescriptionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mControllers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "ChannelGroupSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 37
    const/16 v0, 0x4c2

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 64
    const v0, 0x7f150078

    return v0
.end method

.method public onResume()V
    .locals 6

    .line 42
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    .line 43
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->populateChannelList()V

    .line 50
    iget-object v0, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/NotificationPreferenceController;

    .line 51
    .local v1, "controller":Lcom/android/settings/notification/NotificationPreferenceController;
    iget-object v2, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    iget-object v5, p0, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/notification/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 53
    .end local v1
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->updatePreferenceStates()V

    .line 55
    return-void

    .line 44
    :cond_2
    :goto_1
    const-string v0, "ChannelGroupSettings"

    const-string v1, "Missing package or uid or packageinfo or group"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelGroupNotificationSettings;->finish()V

    .line 46
    return-void
.end method
