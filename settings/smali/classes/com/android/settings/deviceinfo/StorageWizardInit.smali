.class public Lcom/android/settings/deviceinfo/StorageWizardInit;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardInit.java"


# instance fields
.field private mExternal:Landroid/widget/Button;

.field private mInternal:Landroid/widget/Button;

.field private mIsPermittedToAdopt:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->finish()V

    .line 43
    return-void

    .line 45
    :cond_0
    const v0, 0x7f0d01bd

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->setContentView(I)V

    .line 47
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mIsPermittedToAdopt:Z

    .line 50
    const v0, 0x7f120dfb

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 52
    const v0, 0x7f0a0409

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mExternal:Landroid/widget/Button;

    .line 53
    const v0, 0x7f0a040a

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mInternal:Landroid/widget/Button;

    .line 55
    const v0, 0x7f120df9

    new-array v1, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->setBackButtonText(I[Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->onNavigateExternal(Landroid/view/View;)V

    goto :goto_1

    .line 60
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mIsPermittedToAdopt:Z

    if-nez v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mInternal:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 65
    :cond_3
    :goto_1
    return-void
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->finish()V

    .line 70
    return-void
.end method

.method public onNavigateExternal(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 73
    if-eqz p1, :cond_0

    .line 75
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/16 v1, 0x57f

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 80
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/StorageManager;->setVolumeInited(Ljava/lang/String;Z)V

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.os.storage.extra.DISK_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->finish()V

    .line 89
    .end local v0
    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showPublic(Landroid/app/Activity;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void
.end method

.method public onNavigateInternal(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 96
    if-eqz p1, :cond_0

    .line 98
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/16 v1, 0x580

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showPrivate(Landroid/app/Activity;Ljava/lang/String;)V

    .line 103
    return-void
.end method
