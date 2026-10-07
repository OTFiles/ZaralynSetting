.class public Lcom/android/settings/backup/BackupSettingsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BackupSettingsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mBackupSettingsIntent:Landroid/content/Intent;

.field private mBackupSettingsSummary:Ljava/lang/String;

.field private mBackupSettingsTitle:Ljava/lang/String;

.field private mManufacturerIntent:Landroid/content/Intent;

.field private mManufacturerLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/android/settings/backup/BackupSettingsHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/backup/BackupSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, "settingsHelper":Lcom/android/settings/backup/BackupSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentForBackupSettings()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsIntent:Landroid/content/Intent;

    .line 42
    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getLabelForBackupSettings()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsTitle:Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getSummaryForBackupSettings()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsSummary:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentProvidedByManufacturer()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerIntent:Landroid/content/Intent;

    .line 45
    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getLabelProvidedByManufacturer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerLabel:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 50
    const-string v0, "backup_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 51
    .local v0, "backupSettings":Landroid/support/v7/preference/Preference;
    const-string v1, "manufacturer_backup"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 52
    .local v1, "manufacturerSettings":Landroid/support/v7/preference/Preference;
    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 53
    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 56
    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 64
    const/4 v0, 0x1

    return v0
.end method
