.class public Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "ReadboyUsbCnnPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/AdbOnChangeListener;


# instance fields
.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field protected mPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mUserShowEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mUserShowEnable:Z

    .line 108
    iput-object p2, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 109
    invoke-static {}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isThiredAppInstallEnabledByFwq()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mUserShowEnable:Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isSystemShowEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mUserShowEnable:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 111
    return-void
.end method

.method public static isThiredAppInstallEnabledByFwq()Z
    .locals 10

    .line 74
    const-string v0, "content://com.readboy.parentmanager.AppContentProvider/un_mall_app_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 76
    .local v7, "contentResolver":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 77
    .local v8, "state":I
    if-eqz v7, :cond_3

    .line 78
    const/4 v1, 0x0

    move-object v9, v1

    .line 80
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v9, v1

    .line 81
    if-eqz v9, :cond_1

    .line 82
    const-string v1, "PrefControllerMixin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "state"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move v8, v1

    .line 85
    const-string v1, "PrefControllerMixin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 88
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    .line 93
    :cond_1
    if-eqz v9, :cond_3

    .line 95
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 98
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_2

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v1
    :goto_2
    const/4 v1, 0x0

    .end local v9
    .local v1, "cursor":Landroid/database/Cursor;
    goto :goto_5

    .line 93
    .end local v1
    .restart local v9
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 90
    :catch_1
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    .end local v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_3

    .line 95
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 96
    :catch_2
    move-exception v1

    goto :goto_1

    .line 93
    :goto_3
    if-eqz v9, :cond_2

    .line 95
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 98
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 96
    :catch_3
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v2
    :goto_4
    const/4 v9, 0x0

    :cond_2
    throw v1

    .line 103
    .end local v9
    :cond_3
    :goto_5
    const/4 v1, 0x1

    if-ne v8, v1, :cond_4

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    :goto_6
    return v1
.end method

.method public static isUsbConnectPcAnyOneNeedClose()Z
    .locals 3

    .line 185
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->nowAdbEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "readboy_developer_enabled_adb"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isUsbConnectPcEnabled()Z
    .locals 3

    .line 177
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->nowAdbEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "readboy_developer_enabled_adb"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public static nowAdbEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public static resetnowAdbEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 194
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->nowAdbEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 197
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settingslib.development.AbstractEnableAdbController.ENABLE_ADB_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 201
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    :goto_0
    return-void
.end method

.method public static writeUsbCnnPcEnableSetting(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 308
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->nowAdbEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-static {p0, p1}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->resetnowAdbEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 310
    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->nowAdbEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-static {p0, p1}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->resetnowAdbEnabled(Landroid/content/Context;Z)V

    .line 313
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "readboy_developer_enabled_adb"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "readboy_developer_enabled_adb"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 315
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 224
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 225
    const-string v0, "enable_usb_connect_pc"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 226
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isReadboyAdbEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 229
    :cond_0
    const-string v0, ""

    const-string v1, "=====divhee=========displayPreference=1="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 239
    const-string v0, "enable_usb_connect_pc"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 285
    return v1

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isReadboyAdbEnable()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 290
    :cond_1
    const-string v0, "enable_usb_connect_pc"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    invoke-static {}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isUsbConnectPcEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->writeUsbCnnPcEnableSetting(Landroid/content/Context;Z)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->writeUsbCnnPcEnableSetting(Landroid/content/Context;Z)V

    .line 296
    :goto_0
    return v2

    .line 298
    :cond_3
    return v1
.end method

.method public isAvailable()Z
    .locals 2

    .line 234
    iget-boolean v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadboyAdbEnable()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->isDevelopmentRootSwitchOn()Z

    move-result v0

    return v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSystemShowEnable()Z
    .locals 2

    .line 66
    const-string v0, "ro.readboy.control_usb_debug"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUserAMonkey()Z
    .locals 1

    .line 319
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public onAdbSettingChanged()V
    .locals 2

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->nowAdbEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->writeUsbCnnPcEnableSetting(Landroid/content/Context;Z)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isReadboyAdbEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 219
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    .end local v0
    :goto_0
    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 155
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 156
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->writeUsbCnnPcEnableSetting(Landroid/content/Context;Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isReadboyAdbEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 161
    :cond_0
    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    .line 148
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isReadboyAdbEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 151
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 255
    if-eqz p1, :cond_0

    .line 256
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    invoke-static {}, Lcom/android/settings/development/ReadboyUsbCnnPreferenceController;->isUsbConnectPcEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 258
    :cond_0
    const-string v0, ""

    const-string v1, "=====divhee=========displayPreference=2="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method
