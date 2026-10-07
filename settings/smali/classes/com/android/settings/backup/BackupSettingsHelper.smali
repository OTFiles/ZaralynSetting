.class public Lcom/android/settings/backup/BackupSettingsHelper;
.super Ljava/lang/Object;
.source "BackupSettingsHelper.java"


# instance fields
.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "backup"

    .line 42
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 47
    iput-object p1, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private getIntentForDefaultBackupSettings()Landroid/content/Intent;
    .locals 3

    .line 155
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/Settings$PrivacySettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private getIntentFromBackupTransport()Landroid/content/Intent;
    .locals 4

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 177
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "BackupSettingsHelper"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    if-eqz v0, :cond_0

    .line 180
    const-string v1, "BackupSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsed intent from backup transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_0
    const-string v1, "BackupSettingsHelper"

    const-string v2, "Received a null intent from backup transport"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    .line 186
    .end local v0
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupSettingsHelper"

    const-string v2, "Error getting data management intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isBackupServiceActive()Z
    .locals 2

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v0

    .line 201
    .local v0, "backupOkay":Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v0
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 202
    .local v0, "backupOkay":Z
    :goto_0
    return v0
.end method


# virtual methods
.method public getIntentForBackupSettings()Landroid/content/Intent;
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->isIntentProvidedByTransport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentForBackupSettingsFromTransport()Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 61
    .end local v0
    :cond_0
    const-string v0, "BackupSettingsHelper"

    const-string v1, "Backup transport has not provided an intent or the component for the intent is not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-direct {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentForDefaultBackupSettings()Landroid/content/Intent;

    move-result-object v0

    .line 65
    .restart local v0
    :goto_0
    return-object v0
.end method

.method getIntentForBackupSettingsFromTransport()Landroid/content/Intent;
    .locals 3

    .line 146
    invoke-direct {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentFromBackupTransport()Landroid/content/Intent;

    move-result-object v0

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 148
    const-string v1, "backup_services_available"

    invoke-direct {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->isBackupServiceActive()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    :cond_0
    return-object v0
.end method

.method public getIntentProvidedByManufacturer()Landroid/content/Intent;
    .locals 4

    .line 123
    const-string v0, "BackupSettingsHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "BackupSettingsHelper"

    const-string v1, "Getting a backup settings intent provided by manufacturer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "intentString":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v2, "BackupSettingsHelper"

    const-string v3, "Invalid intent provided by the manufacturer."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v1
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLabelForBackupSettings()Ljava/lang/String;
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->getLabelFromBackupTransport()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "label":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f120a58

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_1
    return-object v0
.end method

.method getLabelFromBackupTransport()Ljava/lang/String;
    .locals 4

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 209
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "label":Ljava/lang/String;
    const-string v1, "BackupSettingsHelper"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const-string v1, "BackupSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received the backup settings label from backup transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 214
    .end local v0
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupSettingsHelper"

    const-string v2, "Error getting data management label"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .end local v0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabelProvidedByManufacturer()Ljava/lang/String;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForBackupSettings()Ljava/lang/String;
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->getSummaryFromBackupTransport()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "summary":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f1201bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    return-object v0
.end method

.method getSummaryFromBackupTransport()Ljava/lang/String;
    .locals 4

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 224
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "summary":Ljava/lang/String;
    const-string v1, "BackupSettingsHelper"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "BackupSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received the backup settings summary from backup transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 230
    .end local v0
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupSettingsHelper"

    const-string v2, "Error getting data management summary"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBackupProvidedByManufacturer()Z
    .locals 2

    .line 103
    const-string v0, "BackupSettingsHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "BackupSettingsHelper"

    const-string v1, "Checking if intent provided by manufacturer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "intentString":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isIntentProvidedByTransport()Z
    .locals 2

    .line 164
    invoke-direct {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentFromBackupTransport()Landroid/content/Intent;

    move-result-object v0

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
