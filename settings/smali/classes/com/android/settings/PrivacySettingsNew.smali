.class public Lcom/android/settings/PrivacySettingsNew;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettingsNew.java"


# static fields
.field static final AUTO_RESTORE:Ljava/lang/String; = "auto_restore"

.field static final BACKUP_DATA:Ljava/lang/String; = "backup_data"

.field static final CONFIGURE_ACCOUNT:Ljava/lang/String; = "configure_account"

.field static final DATA_MANAGEMENT:Ljava/lang/String; = "data_management"


# instance fields
.field private mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

.field private mBackup:Landroid/support/v7/preference/Preference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/support/v7/preference/Preference;

.field private mEnabled:Z

.field private mManageData:Landroid/support/v7/preference/Preference;

.field private preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 130
    new-instance v0, Lcom/android/settings/PrivacySettingsNew$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PrivacySettingsNew$1;-><init>(Lcom/android/settings/PrivacySettingsNew;)V

    iput-object v0, p0, Lcom/android/settings/PrivacySettingsNew;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PrivacySettingsNew;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettingsNew;

    .line 53
    iget-object v0, p0, Lcom/android/settings/PrivacySettingsNew;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/PrivacySettingsNew;)Landroid/app/backup/IBackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettingsNew;

    .line 53
    iget-object v0, p0, Lcom/android/settings/PrivacySettingsNew;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p1, "nonVisibleKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "backup"

    .line 230
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 231
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v1, 0x0

    move v2, v1

    .line 233
    .local v2, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v3

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 237
    goto :goto_0

    .line 234
    :catch_0
    move-exception v3

    .line 235
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "PrivacySettings"

    const-string v5, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v3
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.settings"

    .line 239
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    nop

    .line 240
    .local v1, "vendorSpecific":Z
    :cond_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 241
    :cond_1
    const-string v3, "backup_inactive"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_2
    if-nez v1, :cond_3

    if-nez v2, :cond_4

    .line 244
    :cond_3
    const-string v3, "backup_data"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v3, "auto_restore"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v3, "configure_account"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_4
    return-void
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/PrivacySettingsNew;->mConfigure:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PrivacySettingsNew;->mConfigure:Landroid/support/v7/preference/Preference;

    const v1, 0x7f1201bb

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 221
    :goto_0
    return-void
.end method

.method private updateToggles()V
    .locals 10

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettingsNew;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, "res":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 158
    .local v1, "backupEnabled":Z
    const/4 v2, 0x0

    .line 159
    .local v2, "configIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 160
    .local v3, "configSummary":Ljava/lang/String;
    const/4 v4, 0x0

    .line 161
    .local v4, "manageIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 163
    .local v5, "manageLabel":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/settings/PrivacySettingsNew;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v7

    move v1, v7

    .line 164
    iget-object v7, p0, Lcom/android/settings/PrivacySettingsNew;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "transport":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/PrivacySettingsNew;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 166
    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "config"

    .line 165
    invoke-direct {p0, v8, v9}, Lcom/android/settings/PrivacySettingsNew;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    move-object v2, v8

    .line 167
    iget-object v8, p0, Lcom/android/settings/PrivacySettingsNew;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 168
    iget-object v8, p0, Lcom/android/settings/PrivacySettingsNew;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 169
    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "management"

    .line 168
    invoke-direct {p0, v8, v9}, Lcom/android/settings/PrivacySettingsNew;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    move-object v4, v8

    .line 170
    iget-object v8, p0, Lcom/android/settings/PrivacySettingsNew;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 172
    iget-object v8, p0, Lcom/android/settings/PrivacySettingsNew;->mBackup:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    .line 173
    const v9, 0x7f120055

    goto :goto_0

    .line 174
    :cond_0
    const v9, 0x7f120054

    .line 172
    :goto_0
    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 178
    .end local v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 175
    :catch_0
    move-exception v7

    .line 177
    .local v7, "e":Landroid/os/RemoteException;
    iget-object v8, p0, Lcom/android/settings/PrivacySettingsNew;->mBackup:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 180
    .end local v7
    :goto_1
    iget-object v7, p0, Lcom/android/settings/PrivacySettingsNew;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    const-string v8, "backup_auto_restore"

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v8, v9

    goto :goto_2

    :cond_1
    move v8, v6

    :goto_2
    invoke-virtual {v7, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 182
    iget-object v7, p0, Lcom/android/settings/PrivacySettingsNew;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 184
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    move v7, v9

    goto :goto_3

    :cond_2
    move v7, v6

    .line 185
    .local v7, "configureEnabled":Z
    :goto_3
    iget-object v8, p0, Lcom/android/settings/PrivacySettingsNew;->mConfigure:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 186
    iget-object v8, p0, Lcom/android/settings/PrivacySettingsNew;->mConfigure:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 187
    invoke-direct {p0, v3}, Lcom/android/settings/PrivacySettingsNew;->setConfigureSummary(Ljava/lang/String;)V

    .line 189
    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    move v6, v9

    nop

    .line 190
    .local v6, "manageEnabled":Z
    :cond_3
    if-eqz v6, :cond_4

    .line 191
    iget-object v8, p0, Lcom/android/settings/PrivacySettingsNew;->mManageData:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v4}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 192
    if-eqz v5, :cond_5

    .line 193
    iget-object v8, p0, Lcom/android/settings/PrivacySettingsNew;->mManageData:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 197
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettingsNew;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/PrivacySettingsNew;->mManageData:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 198
    const-string v8, ""

    const-string v9, "=====divhee=======mEnabled=====2==="

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_5
    :goto_4
    return-void
.end method

.method private validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "logLabel"    # Ljava/lang/String;

    .line 203
    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettingsNew;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 205
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 206
    .local v1, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    :cond_0
    const/4 p1, 0x0

    .line 208
    const-string v2, "PrivacySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " fails to resolve; ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v0
    .end local v1
    :cond_1
    return-object p1
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 225
    const v0, 0x7f1206b8

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 76
    const/16 v0, 0x51

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettingsNew;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/PrivacySettingsNew;->mEnabled:Z

    .line 85
    iget-boolean v0, p0, Lcom/android/settings/PrivacySettingsNew;->mEnabled:Z

    if-nez v0, :cond_0

    .line 86
    return-void

    .line 89
    :cond_0
    const v0, 0x7f15008f

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettingsNew;->addPreferencesFromResource(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettingsNew;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 91
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    const-string v1, "backup"

    .line 92
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacySettingsNew;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettingsNew;->setPreferenceReferences(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 96
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 97
    .local v1, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettingsNew;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/PrivacySettingsNew;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    .line 98
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 99
    .local v2, "screenPreferenceCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 100
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 101
    .local v4, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 99
    .end local v4
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 106
    .end local v3
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/PrivacySettingsNew;->updateToggles()V

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 114
    iget-boolean v0, p0, Lcom/android/settings/PrivacySettingsNew;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/settings/PrivacySettingsNew;->updateToggles()V

    .line 117
    :cond_0
    return-void
.end method

.method setPreferenceReferences(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 121
    const-string v0, "backup_data"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettingsNew;->mBackup:Landroid/support/v7/preference/Preference;

    .line 123
    const-string v0, "auto_restore"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/PrivacySettingsNew;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    .line 124
    iget-object v0, p0, Lcom/android/settings/PrivacySettingsNew;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/PrivacySettingsNew;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    const-string v0, "configure_account"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettingsNew;->mConfigure:Landroid/support/v7/preference/Preference;

    .line 127
    const-string v0, "data_management"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettingsNew;->mManageData:Landroid/support/v7/preference/Preference;

    .line 128
    return-void
.end method
