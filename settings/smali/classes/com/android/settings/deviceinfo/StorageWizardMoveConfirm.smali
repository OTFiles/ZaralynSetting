.class public Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveConfirm.java"


# instance fields
.field private mApp:Landroid/content/pm/ApplicationInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 108
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 109
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->onNavigateNext(Landroid/view/View;)V

    goto :goto_0

    .line 117
    :cond_0
    const-string v0, "StorageSettings"

    const-string v1, "Failed to confirm credentials"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 122
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    .line 52
    return-void

    .line 54
    :cond_0
    const v0, 0x7f0d01bc

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setContentView(I)V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    .line 62
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 65
    nop

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 65
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "appName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "volumeName":Ljava/lang/String;
    const v3, 0x7f080213

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setIcon(I)V

    .line 72
    const v3, 0x7f120e0f

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/CharSequence;

    aput-object v0, v5, v2

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 73
    const v3, 0x7f120e0e

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setBodyText(I[Ljava/lang/CharSequence;)V

    .line 75
    const v3, 0x7f1208e3

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->setNextButtonText(I[Ljava/lang/CharSequence;)V

    .line 76
    return-void

    .line 59
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finish()V

    .line 61
    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .line 81
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 83
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    const-string v0, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is currently locked; requesting unlock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const v0, 0x7f120e13

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 85
    invoke-static {v0, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 87
    .local v0, "description":Ljava/lang/CharSequence;
    new-instance v5, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v5, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v10, v1, Landroid/content/pm/UserInfo;->id:I

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivityForAnyUser(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Z

    .line 89
    return-void

    .line 91
    .end local v0
    .end local v1
    :cond_0
    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "appName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I

    move-result v1

    .line 98
    .local v1, "moveId":I
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v3, "android.os.storage.extra.VOLUME_ID"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;->finishAffinity()V

    .line 104
    return-void
.end method
