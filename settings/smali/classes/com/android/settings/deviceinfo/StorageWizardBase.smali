.class public abstract Lcom/android/settings/deviceinfo/StorageWizardBase;
.super Landroid/app/Activity;
.source "StorageWizardBase.java"


# instance fields
.field private mBack:Landroid/widget/Button;

.field protected mDisk:Landroid/os/storage/DiskInfo;

.field private mNext:Landroid/widget/Button;

.field protected mStorage:Landroid/os/storage/StorageManager;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field protected mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 252
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardBase$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "from"    # Landroid/content/Intent;
    .param p2, "to"    # Landroid/content/Intent;
    .param p3, "key"    # Ljava/lang/String;

    .line 188
    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    :cond_0
    return-void
.end method

.method private copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "from"    # Landroid/content/Intent;
    .param p2, "to"    # Landroid/content/Intent;
    .param p3, "key"    # Ljava/lang/String;

    .line 182
    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    :cond_0
    return-void
.end method


# virtual methods
.method protected findFirstVolume(I)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p1, "type"    # I

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findFirstVolume(II)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method protected findFirstVolume(II)Landroid/os/storage/VolumeInfo;
    .locals 5
    .param p1, "type"    # I
    .param p2, "attempts"    # I

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 215
    .local v0, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 216
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 217
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 218
    return-object v2

    .line 220
    .end local v2
    :cond_0
    goto :goto_1

    .line 222
    :cond_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    .line 223
    const-string v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing mounted volume of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hosted by disk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    .line 224
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; trying again"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-wide/16 v1, 0xfa

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 229
    .end local v0
    goto :goto_0

    .line 227
    .restart local v0
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getDiskDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :cond_1
    const v0, 0x7f120ee2

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getDiskShortDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :cond_1
    const v0, 0x7f120ee2

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getGlifLayout()Lcom/android/setupwizardlib/GlifLayout;
    .locals 1

    .line 114
    const v0, 0x7f0a03c6

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/GlifLayout;

    return-object v0
.end method

.method protected getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 118
    const v0, 0x7f0a040c

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "volumeId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "diskId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    goto :goto_0

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    .line 84
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v2, :cond_3

    .line 85
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 87
    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    return-void
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected setAuxChecklist()V
    .locals 6

    .line 140
    const v0, 0x7f0a0407

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 141
    .local v0, "aux":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 142
    const/4 v2, 0x0

    const v3, 0x7f0d01ba

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 143
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 146
    const v1, 0x7f0a040b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 148
    const v3, 0x7f120e0a

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v2

    .line 147
    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method protected varargs setBackButtonText(I[Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/CharSequence;

    .line 153
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mBack:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mBack:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    return-void
.end method

.method protected varargs setBodyText(I[Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/CharSequence;

    .line 134
    const v0, 0x7f0a0408

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    .local v0, "body":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 93
    const v0, 0x7f0a03fe

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mBack:Landroid/widget/Button;

    .line 94
    const v0, 0x7f0a0404

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Landroid/widget/Button;

    .line 96
    const v0, 0x10804cd

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setIcon(I)V

    .line 97
    return-void
.end method

.method protected setCurrentProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 123
    const v0, 0x7f0a040d

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method protected varargs setHeaderText(I[Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/CharSequence;

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 129
    .local v0, "headerText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method protected setIcon(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v0

    .line 164
    .local v0, "layout":Lcom/android/setupwizardlib/GlifLayout;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 165
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/android/setupwizardlib/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 167
    return-void
.end method

.method protected setKeepScreenOn(Z)V
    .locals 1
    .param p1, "keepScreenOn"    # Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/GlifLayout;->setKeepScreenOn(Z)V

    .line 171
    return-void
.end method

.method protected varargs setNextButtonText(I[Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/CharSequence;

    .line 158
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 196
    .local v0, "from":Landroid/content/Intent;
    move-object v1, p1

    .line 198
    .local v1, "to":Landroid/content/Intent;
    const-string v2, "android.os.storage.extra.DISK_ID"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    .line 199
    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    .line 200
    const-string v2, "format_forget_uuid"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    .line 201
    const-string v2, "format_private"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    .line 202
    const-string v2, "format_slow"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    .line 203
    const-string v2, "migrate_skip"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method
