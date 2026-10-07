.class public Lcom/android/settings/users/UserDetailsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultGuestRestrictions:Landroid/os/Bundle;

.field private mGuestUser:Z

.field private mPhonePref:Landroid/support/v14/preference/SwitchPreference;

.field private mRemoveUserPref:Landroid/support/v7/preference/Preference;

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/UserDetailsSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method enableCallsAndSms(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 139
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v1, "no_outgoing_calls"

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v1, "no_sms"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 150
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 152
    .local v3, "userHandle":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 153
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 154
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 153
    invoke-virtual {v6, v5, v7, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 155
    .end local v5
    goto :goto_1

    .line 157
    .end local v2
    .end local v3
    :cond_0
    goto :goto_0

    .line 158
    .end local v0
    :cond_1
    goto :goto_2

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 160
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_outgoing_calls"

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_sms"

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 164
    .end local v0
    :goto_2
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 198
    packed-switch p1, :pswitch_data_0

    .line 206
    const/4 v0, 0x0

    return v0

    .line 204
    :pswitch_0    # 0x3
    const/16 v0, 0x251

    return v0

    .line 202
    :pswitch_1    # 0x2
    const/16 v0, 0x250

    return v0

    .line 200
    :pswitch_2    # 0x1
    const/16 v0, 0x24f

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 72
    const/16 v0, 0x62

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 80
    .local v0, "context":Landroid/content/Context;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    .line 82
    const v1, 0x7f1500b8

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserDetailsSettings;->addPreferencesFromResource(I)V

    .line 83
    const-string v1, "enable_calling"

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroid/support/v14/preference/SwitchPreference;

    .line 84
    const-string v1, "remove_user"

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroid/support/v7/preference/Preference;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "guest_user"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    .line 88
    iget-boolean v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    if-nez v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "user_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, "userId":I
    if-eq v1, v3, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 95
    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_outgoing_calls"

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 97
    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    .end local v1
    goto :goto_0

    .line 92
    .restart local v1
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Arguments to this fragment must contain the user id"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    .end local v1
    :cond_1
    const-string v1, "remove_user"

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserDetailsSettings;->removePreference(Ljava/lang/String;)Z

    .line 102
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f120fab

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 104
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v3, "no_outgoing_calls"

    .line 105
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 104
    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 107
    :goto_0
    const-string v1, "no_remove_user"

    .line 108
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 107
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    const-string v1, "remove_user"

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserDetailsSettings;->removePreference(Ljava/lang/String;)Z

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 169
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 170
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported dialogId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :pswitch_0    # 0x3
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings/users/UserDetailsSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserDetailsSettings$3;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {v1, v2}, Lcom/android/settings/users/UserDialogs;->createEnablePhoneCallsAndSmsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    .line 179
    :pswitch_1    # 0x2
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings/users/UserDetailsSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserDetailsSettings$2;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {v1, v2}, Lcom/android/settings/users/UserDialogs;->createEnablePhoneCallsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    .line 172
    :pswitch_2    # 0x1
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    new-instance v3, Lcom/android/settings/users/UserDetailsSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/users/UserDetailsSettings$1;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {v1, v2, v3}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 128
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 130
    :cond_0
    const/4 v0, 0x3

    .line 129
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    .line 131
    return v1

    .line 133
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserDetailsSettings;->enableCallsAndSms(Z)V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 116
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    .line 121
    return v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only admins can remove a user"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method removeUser()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->finishFragment()V

    .line 213
    return-void
.end method
