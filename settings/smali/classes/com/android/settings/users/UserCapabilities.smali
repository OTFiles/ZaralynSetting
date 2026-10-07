.class public Lcom/android/settings/users/UserCapabilities;
.super Ljava/lang/Object;
.source "UserCapabilities.java"


# instance fields
.field mCanAddGuest:Z

.field mCanAddRestrictedProfile:Z

.field mCanAddUser:Z

.field mDisallowAddUser:Z

.field mDisallowAddUserSetByAdmin:Z

.field mDisallowSwitchUser:Z

.field mEnabled:Z

.field mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field mIsAdmin:Z

.field mIsGuest:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    .line 40
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 44
    .local v0, "userManager":Landroid/os/UserManager;
    new-instance v1, Lcom/android/settings/users/UserCapabilities;

    invoke-direct {v1}, Lcom/android/settings/users/UserCapabilities;-><init>()V

    .line 46
    .local v1, "caps":Lcom/android/settings/users/UserCapabilities;
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 52
    .local v2, "myUserInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    .line 53
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    .line 54
    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 57
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    :cond_1
    iput-boolean v3, v1, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    .line 60
    :cond_2
    invoke-virtual {v1, p0}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    .line 61
    return-object v1

    .line 47
    .end local v2
    .end local v4
    :cond_3
    :goto_0
    iput-boolean v3, v1, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    .line 48
    return-object v1
.end method


# virtual methods
.method public disallowAddUser()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    return v0
.end method

.method public disallowAddUserSetByAdmin()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    return v0
.end method

.method public getEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method public isAdmin()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserCapabilities{mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCanAddUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCanAddRestrictedProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCanAddGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisallowAddUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnforcedAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisallowSwitchUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAddUserCapabilities(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const-string v0, "no_add_user"

    .line 66
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 65
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 67
    const-string v0, "no_add_user"

    .line 68
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 67
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 69
    .local v0, "hasBaseUserRestriction":Z
    iget-object v1, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    .line 71
    iget-object v1, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    .line 73
    iput-boolean v3, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    .line 74
    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_3

    .line 75
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz v1, :cond_4

    .line 77
    :cond_3
    iput-boolean v2, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    .line 80
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-nez v1, :cond_6

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "add_users_when_locked"

    .line 80
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    :goto_3
    move v1, v3

    .line 82
    .local v1, "canAddUsersWhenLocked":Z
    :goto_4
    iget-boolean v4, p0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-nez v4, :cond_7

    if-eqz v1, :cond_7

    move v2, v3

    nop

    :cond_7
    iput-boolean v2, p0, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    .line 84
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 85
    .local v2, "userManager":Landroid/os/UserManager;
    const-string v3, "no_user_switch"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    .line 86
    return-void
.end method
