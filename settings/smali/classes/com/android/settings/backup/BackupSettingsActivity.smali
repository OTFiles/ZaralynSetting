.class public Lcom/android/settings/backup/BackupSettingsActivity;
.super Landroid/app/Activity;
.source "BackupSettingsActivity.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/android/settings/backup/BackupSettingsActivity$1;

    invoke-direct {v0}, Lcom/android/settings/backup/BackupSettingsActivity$1;-><init>()V

    sput-object v0, Lcom/android/settings/backup/BackupSettingsActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Lcom/android/settings/backup/BackupSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/backup/BackupSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "backupHelper":Lcom/android/settings/backup/BackupSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->isBackupProvidedByManufacturer()Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_1

    .line 56
    const-string v1, "BackupSettingsActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "BackupSettingsActivity"

    const-string v2, "No manufacturer settings found, launching the backup settings directly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentForBackupSettings()Landroid/content/Intent;

    move-result-object v1

    .line 63
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 64
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 63
    invoke-virtual {v3, v4, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 71
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v3

    .line 68
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "BackupSettingsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to enable activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " but couldn\'t: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v3
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/BackupSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsActivity;->finish()V

    .line 76
    .end local v1
    goto :goto_1

    .line 77
    :cond_1
    const-string v1, "BackupSettingsActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    const-string v1, "BackupSettingsActivity"

    const-string v2, "Manufacturer provided backup settings, showing the preference screen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    if-nez v1, :cond_3

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    new-instance v3, Lcom/android/settings/backup/BackupSettingsFragment;

    invoke-direct {v3}, Lcom/android/settings/backup/BackupSettingsFragment;-><init>()V

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 88
    :goto_1
    return-void
.end method

.method setFragmentManager(Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .line 136
    iput-object p1, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 137
    return-void
.end method
