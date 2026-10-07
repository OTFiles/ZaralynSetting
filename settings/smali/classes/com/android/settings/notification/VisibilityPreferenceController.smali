.class public Lcom/android/settings/notification/VisibilityPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "VisibilityPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p3, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .line 47
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 48
    iput-object p2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 49
    return-void
.end method

.method private getGlobalVisibility()I
    .locals 2

    .line 140
    const/16 v0, -0x3e8

    .line 141
    .local v0, "globalVis":I
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getLockscreenNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    const/4 v0, -0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getLockscreenAllowPrivateNotifications()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    const/4 v0, 0x0

    .line 146
    :cond_1
    :goto_0
    return v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_allow_private_notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 151
    .local v0, "parentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 152
    .local v1, "primaryUserId":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_show_notifications"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    return v4
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "pref"    # Lcom/android/settings/RestrictedListPreference;
    .param p2, "entry"    # Ljava/lang/CharSequence;
    .param p3, "entryValue"    # Ljava/lang/CharSequence;
    .param p4, "keyguardNotificationFeatures"    # I

    .line 129
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->userId:I

    .line 130
    invoke-static {v0, p4, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 132
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    .line 133
    new-instance v1, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    invoke-direct {v1, p2, p3, v0}, Lcom/android/settings/RestrictedListPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 135
    .local v1, "item":Lcom/android/settings/RestrictedListPreference$RestrictedItem;
    invoke-virtual {p1, v1}, Lcom/android/settings/RestrictedListPreference;->addRestrictedItem(Lcom/android/settings/RestrictedListPreference$RestrictedItem;)V

    .line 137
    .end local v1
    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "visibility_override"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    return v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VisibilityPreferenceController;->checkCanBeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->isLockScreenSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 62
    :cond_3
    :goto_0
    return v1
.end method

.method protected isLockScreenSecure()Z
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 163
    .local v0, "lockscreenSecure":Z
    iget-object v1, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 164
    .local v1, "parentUser":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 168
    :cond_0
    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    .line 116
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "sensitive":I
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getGlobalVisibility()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 118
    const/16 v0, -0x3e8

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->saveChannel()V

    .line 124
    .end local v0
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_3

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/android/settings/RestrictedListPreference;

    .line 70
    .local v0, "pref":Lcom/android/settings/RestrictedListPreference;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0}, Lcom/android/settings/RestrictedListPreference;->clearRestrictedItems()V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getLockscreenNotificationsEnabled()Z

    move-result v3

    const/16 v4, -0x3e8

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getLockscreenAllowPrivateNotifications()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f1207e9

    .line 76
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "summaryShowEntry":Ljava/lang/String;
    nop

    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const/16 v6, 0xc

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/android/settings/notification/VisibilityPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 87
    .end local v3
    .end local v5
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getLockscreenNotificationsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f1207e7

    .line 89
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "summaryHideEntry":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const/4 v6, 0x4

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/android/settings/notification/VisibilityPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 98
    .end local v3
    .end local v5
    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f1207e6

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/android/settings/RestrictedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/android/settings/RestrictedListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 103
    iget-object v3, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->getGlobalVisibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v3, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    .line 109
    :goto_0
    const-string v3, "%s"

    invoke-virtual {v0, v3}, Lcom/android/settings/RestrictedListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    .end local v0
    .end local v1
    .end local v2
    :cond_3
    return-void
.end method
