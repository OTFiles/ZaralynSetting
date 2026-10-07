.class public abstract Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AbstractEnableAdbPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/ConfirmationDialogController;


# instance fields
.field protected mPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private isAdbEnabled()Z
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private notifyStateChanged()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settingslib.development.AbstractEnableAdbController.ENABLE_ADB_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 126
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "enable_adb"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 58
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "enable_adb"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 101
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    return v1

    .line 105
    :cond_0
    const-string v0, "enable_adb"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAdbEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->showConfirmationDialog(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->writeAdbSetting(Z)V

    .line 111
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_2
    return v1
.end method

.method public isAvailable()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 63
    .local v0, "um":Landroid/os/UserManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isUserAMonkey()Z
    .locals 1

    .line 130
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 79
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->isAdbEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 80
    return-void
.end method

.method protected writeAdbSetting(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 118
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    .line 119
    nop

    .line 118
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    invoke-direct {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->notifyStateChanged()V

    .line 121
    return-void
.end method
