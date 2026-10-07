.class public Lcom/android/settings/deviceinfo/StorageWizardReady;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finish()V

    .line 32
    return-void

    .line 34
    :cond_0
    const v0, 0x7f0d01bc

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setContentView(I)V

    .line 36
    const v0, 0x7f120e16

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 39
    .local v0, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "migrate_skip"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    const v2, 0x7f120e18

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v4

    .line 41
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 44
    :cond_1
    const v2, 0x7f120e19

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v1

    .line 44
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 48
    :cond_2
    const v2, 0x7f120e17

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v4

    .line 48
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/CharSequence;)V

    .line 52
    :goto_0
    const v1, 0x7f120589

    new-array v2, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setNextButtonText(I[Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finishAffinity()V

    .line 58
    return-void
.end method
