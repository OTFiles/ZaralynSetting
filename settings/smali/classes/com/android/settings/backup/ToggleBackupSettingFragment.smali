.class public Lcom/android/settings/backup/ToggleBackupSettingFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleBackupSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mSummaryPreference:Landroid/support/v7/preference/Preference;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mWaitingForConfirmationDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/backup/ToggleBackupSettingFragment;

    .line 30
    invoke-direct {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->showEraseBackupDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/backup/ToggleBackupSettingFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/backup/ToggleBackupSettingFragment;
    .param p1, "x1"    # Z

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    return-void
.end method

.method private setBackupEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 205
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    .line 211
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ToggleBackupSettingFragment"

    const-string v2, "Error communicating with BackupManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    return-void

    .line 213
    .end local v0
    :cond_0
    :goto_0
    return-void
.end method

.method private showEraseBackupDialog()V
    .locals 3

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_full_data_backup_aware"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120665

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "msg":Ljava/lang/CharSequence;
    goto :goto_0

    .line 180
    .end local v0
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 183
    .restart local v0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    .line 186
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1201c1

    .line 187
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 188
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 189
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    .line 192
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 196
    const/16 v0, 0x51

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/backup/ToggleBackupSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment$2;-><init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1201be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SwitchBar;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 150
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 151
    iput-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    .line 152
    invoke-direct {p0, v0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    goto :goto_0

    .line 154
    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 156
    iput-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    .line 158
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 160
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v0, "backup"

    .line 57
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 61
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 62
    new-instance v1, Lcom/android/settings/backup/ToggleBackupSettingFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/backup/ToggleBackupSettingFragment$1;-><init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    .line 70
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 71
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0d020a

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 73
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->hide(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 164
    iget-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    .line 144
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 145
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 80
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar(Ljava/lang/String;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 81
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_full_data_backup_aware"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120664

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f1201bd

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 93
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-nez v1, :cond_1

    .line 94
    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    .line 95
    .local v1, "backupEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 99
    .end local v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 96
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 100
    .end local v1
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1201be

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 101
    return-void
.end method
