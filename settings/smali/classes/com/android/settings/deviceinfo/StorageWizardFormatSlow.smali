.class public Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatSlow.java"


# instance fields
.field private mFormatPrivate:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->finish()V

    .line 38
    return-void

    .line 40
    :cond_0
    const v0, 0x7f0d01bc

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "format_private"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mFormatPrivate:Z

    .line 44
    const v0, 0x7f120e1e

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 45
    const v0, 0x7f120e1b

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v1

    .line 45
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setBodyText(I[Ljava/lang/CharSequence;)V

    .line 49
    const v0, 0x7f120e1d

    new-array v1, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setBackButtonText(I[Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f120e1c

    new-array v1, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->setNextButtonText(I[Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "format_slow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->onNavigateNext(Landroid/view/View;)V

    .line 56
    :cond_1
    return-void
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 60
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x583

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->startActivity(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->finishAffinity()V

    .line 66
    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 70
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 72
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/16 v2, 0x582

    new-array v3, v0, [Landroid/util/Pair;

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/16 v2, 0x581

    new-array v3, v0, [Landroid/util/Pair;

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "format_forget_uuid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "forgetUuid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->forgetVolume(Ljava/lang/String;)V

    .line 86
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mFormatPrivate:Z

    if-eqz v2, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 90
    .local v2, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v2, :cond_2

    const-string v3, "private"

    .line 91
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    nop

    .line 92
    .end local v2
    .local v0, "offerMigrate":Z
    :cond_2
    goto :goto_1

    .line 93
    .end local v0
    :cond_3
    nop

    .line 96
    .restart local v0
    :goto_1
    if-eqz v0, :cond_4

    .line 97
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.os.storage.extra.DISK_ID"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->startActivity(Landroid/content/Intent;)V

    .line 100
    .end local v2
    goto :goto_2

    .line 101
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .restart local v2
    const-string v3, "android.os.storage.extra.DISK_ID"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->startActivity(Landroid/content/Intent;)V

    .line 105
    .end local v2
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;->finishAffinity()V

    .line 106
    return-void
.end method
