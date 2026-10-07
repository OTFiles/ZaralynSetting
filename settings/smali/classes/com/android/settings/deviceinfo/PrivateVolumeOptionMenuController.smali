.class public Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;
.super Ljava/lang/Object;
.source "PrivateVolumeOptionMenuController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;
.implements Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private mVolumeInfo:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeInfo"    # Landroid/os/storage/VolumeInfo;
    .param p3, "packageManager"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    .line 51
    iput-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 52
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 56
    const/4 v0, 0x0

    const/16 v1, 0x64

    const v2, 0x7f120dc0

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 57
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.os.storage.extra.VOLUME_ID"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    const/4 v1, 0x1

    return v1

    .line 83
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 67
    .local v0, "privateVol":Landroid/os/storage/VolumeInfo;
    const/16 v1, 0x64

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 68
    .local v1, "migrate":Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 69
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    .line 71
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 69
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 73
    :cond_2
    return-void
.end method
