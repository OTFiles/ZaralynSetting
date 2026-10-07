.class public Lcom/android/settings/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

.field private mBackup:Landroid/support/v7/preference/PreferenceScreen;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigure:Landroid/support/v7/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mEnabled:Z

.field private mFactoryReset:Landroid/support/v7/preference/Preference;

.field private mManageData:Landroid/support/v7/preference/PreferenceScreen;

.field private mPowerValue:I

.field private mRecovery:Landroid/support/v7/preference/PreferenceScreen;

.field private preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 437
    new-instance v0, Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PrivacySettings;->mPowerValue:I

    .line 170
    new-instance v0, Lcom/android/settings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PrivacySettings$1;-><init>(Lcom/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 337
    new-instance v0, Lcom/android/settings/PrivacySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/PrivacySettings$4;-><init>(Lcom/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PrivacySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .line 75
    iget v0, p0, Lcom/android/settings/PrivacySettings;->mPowerValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/PrivacySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;
    .param p1, "x1"    # I

    .line 75
    iput p1, p0, Lcom/android/settings/PrivacySettings;->mPowerValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/PrivacySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .line 75
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->rebootRecovery()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/PrivacySettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .line 75
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .line 75
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/Collection;

    .line 75
    invoke-static {p0, p1}, Lcom/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method private static collectDiagnosticsEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 512
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 513
    return v1

    .line 517
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.tmobile.pr.mytmobile"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
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

    .line 478
    .local p1, "nonVisibleKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "backup"

    .line 479
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 478
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 480
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v1, 0x0

    move v2, v1

    .line 482
    .local v2, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v3

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 486
    goto :goto_0

    .line 483
    :catch_0
    move-exception v3

    .line 484
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "PrivacySettings"

    const-string v5, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .end local v3
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.settings"

    .line 488
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    nop

    .line 489
    .local v1, "vendorSpecific":Z
    :cond_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 490
    :cond_1
    const-string v3, "backup_inactive"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_2
    if-nez v1, :cond_3

    if-nez v2, :cond_4

    .line 493
    :cond_3
    const-string v3, "backup_data"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 494
    const-string v3, "auto_restore"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 495
    const-string v3, "configure_account"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_4
    const-string v3, "no_factory_reset"

    .line 498
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 497
    invoke-static {p0, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 499
    const-string v3, "factory_reset"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_5
    const-string v3, "no_network_reset"

    .line 503
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 502
    invoke-static {p0, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 504
    const-string v3, "network_reset"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_6
    invoke-static {p0}, Lcom/android/settings/PrivacySettings;->collectDiagnosticsEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 507
    const-string v3, "collect_diagnostics"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_7
    return-void
.end method

.method private rebootRecovery()V
    .locals 5

    .line 316
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "RECOVERY_DIR":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 318
    .local v1, "COMMAND_FILE":Ljava/io/File;
    const-string v2, "--show_text"

    .line 319
    .local v2, "SHOW_TEXT":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 323
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 324
    .local v3, "command":Ljava/io/FileWriter;
    invoke-virtual {v3, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 325
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 330
    .end local v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v3

    .line 329
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 332
    .end local v3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 333
    .local v3, "pm":Landroid/os/PowerManager;
    const-string v4, "recovery"

    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 278
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 279
    const v2, 0x7f120886

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 278
    invoke-virtual {v1, p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .line 422
    if-eqz p1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/PreferenceScreen;

    const v1, 0x7f1201bb

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    .line 427
    :goto_0
    return-void
.end method

.method private showRecoveryDialog()V
    .locals 3

    .line 283
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120e61

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120e5f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/PrivacySettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/PrivacySettings$3;-><init>(Lcom/android/settings/PrivacySettings;)V

    .line 285
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/PrivacySettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/PrivacySettings$2;-><init>(Lcom/android/settings/PrivacySettings;)V

    .line 308
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 314
    return-void
.end method

.method private updateToggles()V
    .locals 10

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 364
    .local v0, "res":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 365
    .local v1, "backupEnabled":Z
    const/4 v2, 0x0

    .line 366
    .local v2, "configIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 367
    .local v3, "configSummary":Ljava/lang/String;
    const/4 v4, 0x0

    .line 368
    .local v4, "manageIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 370
    .local v5, "manageLabel":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v7

    move v1, v7

    .line 371
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, "transport":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 373
    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "config"

    .line 372
    invoke-direct {p0, v8, v9}, Lcom/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    move-object v2, v8

    .line 374
    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 375
    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 376
    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "management"

    .line 375
    invoke-direct {p0, v8, v9}, Lcom/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    move-object v4, v8

    .line 377
    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 379
    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 380
    const v9, 0x7f120055

    goto :goto_0

    .line 381
    :cond_0
    const v9, 0x7f120054

    .line 379
    :goto_0
    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    .line 385
    .end local v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 382
    :catch_0
    move-exception v7

    .line 384
    .local v7, "e":Landroid/os/RemoteException;
    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 387
    .end local v7
    :goto_1
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

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

    .line 389
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 391
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    move v7, v9

    goto :goto_3

    :cond_2
    move v7, v6

    .line 392
    .local v7, "configureEnabled":Z
    :goto_3
    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 393
    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 394
    invoke-direct {p0, v3}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 396
    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    move v6, v9

    nop

    .line 397
    .local v6, "manageEnabled":Z
    :cond_3
    if-eqz v6, :cond_4

    .line 398
    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v4}, Landroid/support/v7/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 399
    if-eqz v5, :cond_5

    .line 400
    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v5}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 404
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 406
    :cond_5
    :goto_4
    return-void
.end method

.method private validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "logLabel"    # Ljava/lang/String;

    .line 409
    if-eqz p1, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 411
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 412
    .local v1, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    :cond_0
    const/4 p1, 0x0

    .line 414
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

    .line 418
    .end local v0
    .end local v1
    :cond_1
    return-object p1
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 431
    const v0, 0x7f1206b8

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 110
    const/16 v0, 0x51

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 249
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 251
    const-string v0, "PrivacySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "======divhee====onActivityResult====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, -0x1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    .line 253
    if-ne p2, v0, :cond_3

    .line 254
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->showRecoveryDialog()V

    goto :goto_0

    .line 256
    :cond_0
    const/16 v2, 0x67

    if-ne p1, v2, :cond_3

    .line 257
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eq p2, v0, :cond_2

    .line 258
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 259
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/PrivacySettings;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 260
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->showRecoveryDialog()V

    .line 274
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    .line 119
    iget-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-nez v0, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    const v0, 0x7f15008f

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 125
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    const-string v1, "backup"

    .line 126
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 125
    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 128
    const-string v1, "backup_data"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/support/v7/preference/PreferenceScreen;

    .line 130
    const-string v1, "auto_restore"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    .line 131
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    const-string v1, "configure_account"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/PreferenceScreen;

    .line 134
    const-string v1, "data_management"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/PreferenceScreen;

    .line 136
    const-string v1, "system_recovery"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mRecovery:Landroid/support/v7/preference/PreferenceScreen;

    .line 137
    const-string v1, "factory_reset"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mFactoryReset:Landroid/support/v7/preference/Preference;

    .line 139
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 140
    .local v1, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    .line 141
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 142
    .local v2, "screenPreferenceCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 143
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 144
    .local v4, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 142
    .end local v4
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 149
    .end local v3
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 150
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 166
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 225
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mRecovery:Landroid/support/v7/preference/PreferenceScreen;

    if-ne p1, v0, :cond_2

    .line 226
    iget v0, p0, Lcom/android/settings/PrivacySettings;->mPowerValue:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 227
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const v1, 0x7f1201fd

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    .line 228
    return v2

    .line 230
    :cond_0
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettings;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/settings/PrivacySettings;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->showRecoveryDialog()V

    .line 235
    :cond_1
    return v2

    .line 244
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .line 154
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 157
    iget-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PrivacySettings;->mPowerValue:I

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 4
    .param p1, "request"    # I

    .line 195
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/PrivacySettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 197
    return v1

    .line 199
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/PrivacySettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 202
    return v1

    .line 206
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    const-string v1, "cn.dream.ebag.action.SETTING_TEACHER_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 210
    :cond_3
    const-string v1, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/PrivacySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 217
    .end local v0
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 214
    :catch_1
    move-exception v0

    .line 215
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 216
    const-string v1, ""

    const-string v2, "====divhee========android.readboy.parentmanager.INPUT_PASSWORD=p=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v0
    nop

    .line 220
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
