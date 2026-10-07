.class public Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrateConfirm.java"


# instance fields
.field private mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;


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

    .line 147
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 148
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->onNavigateNext(Landroid/view/View;)V

    goto :goto_0

    .line 156
    :cond_0
    const-string v0, "StorageSettings"

    const-string v1, "Failed to confirm credentials"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 161
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0d01bc

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setContentView(I)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 57
    .local v0, "sourceVol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    const v2, 0x7f080213

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setIcon(I)V

    .line 64
    const v2, 0x7f120e0d

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 65
    const v1, 0x7f12089f

    new-array v2, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setBodyText(I[Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setAuxChecklist()V

    .line 68
    new-instance v1, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    .line 76
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->copyFrom(Landroid/content/Intent;)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    const v1, 0x7f120e0b

    new-array v2, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setBackButtonText(I[Ljava/lang/CharSequence;)V

    .line 80
    const v1, 0x7f120e0c

    new-array v2, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setNextButtonText(I[Ljava/lang/CharSequence;)V

    .line 81
    return-void

    .line 58
    :cond_2
    :goto_0
    const-string v1, "StorageSettings"

    const-string v2, "Missing either source or target volume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finish()V

    .line 60
    return-void
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 85
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x585

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "migrate_skip"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .line 96
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 97
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 98
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 99
    const-string v0, "StorageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is currently locked; requesting unlock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const v0, 0x7f120e13

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v4, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v4, v2, v1

    .line 100
    invoke-static {v0, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    .local v0, "description":Ljava/lang/CharSequence;
    new-instance v5, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v5, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivityForAnyUser(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Z

    .line 104
    return-void

    .line 106
    .end local v0
    .end local v3
    :cond_0
    goto :goto_0

    .line 112
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I

    move-result v0

    .line 133
    .local v0, "moveId":I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 132
    nop

    .line 135
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    const/16 v3, 0x584

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v2, p0, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.os.storage.extra.VOLUME_ID"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v2, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->startActivity(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    .line 143
    return-void

    .line 127
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalStateException;
    const v1, 0x7f1200f9

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    .line 132
    return-void

    .line 113
    .end local v0
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 116
    .local v1, "sm":Landroid/os/storage/StorageManager;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.os.storage.extra.DISK_ID"

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->startActivity(Landroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    .line 123
    return-void

    .line 125
    .end local v2
    :cond_2
    throw v0
.end method
