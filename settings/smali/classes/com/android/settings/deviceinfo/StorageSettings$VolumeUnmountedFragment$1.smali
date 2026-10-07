.class Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$vol:Landroid/os/storage/VolumeInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;Landroid/os/storage/VolumeInfo;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    .line 457
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$vol:Landroid/os/storage/VolumeInfo;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private wasAdminSupportIntentShown(Ljava/lang/String;)Z
    .locals 3
    .param p1, "restriction"    # Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    .line 468
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 467
    invoke-static {v0, p1, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 469
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    .line 471
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 470
    invoke-static {v1, p1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    .line 472
    .local v1, "hasBaseUserRestriction":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 475
    const/4 v2, 0x1

    return v2

    .line 478
    :cond_0
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 483
    const-string v0, "no_physical_media"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->wasAdminSupportIntentShown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$vol:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$vol:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "no_usb_file_transfer"

    .line 489
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->wasAdminSupportIntentShown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    return-void

    .line 494
    :cond_1
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 495
    return-void
.end method
