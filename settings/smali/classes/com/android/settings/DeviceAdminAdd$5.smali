.class Lcom/android/settings/DeviceAdminAdd$5;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAdd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DeviceAdminAdd;

    .line 349
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 351
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-static {v0}, Lcom/android/settings/DeviceAdminAdd;->access$000(Lcom/android/settings/DeviceAdminAdd;)V

    .line 353
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-boolean v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/settings/DeviceAdminAdd;->addAndFinish()V

    goto/16 :goto_1

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-static {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->access$100(Lcom/android/settings/DeviceAdminAdd;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 358
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 360
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    new-instance v2, Lcom/android/settings/DeviceAdminAdd$5$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/DeviceAdminAdd$5$1;-><init>(Lcom/android/settings/DeviceAdminAdd$5;I)V

    invoke-static {v1, v0, v2}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 370
    .end local v0
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-boolean v0, v0, Lcom/android/settings/DeviceAdminAdd;->mUninstalling:Z

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto :goto_1

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-boolean v0, v0, Lcom/android/settings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v0, :cond_4

    .line 377
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 379
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    .line 381
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/settings/DeviceAdminAdd$5$2;

    invoke-direct {v3, p0}, Lcom/android/settings/DeviceAdminAdd$5$2;-><init>(Lcom/android/settings/DeviceAdminAdd$5;)V

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v4, v4, Lcom/android/settings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/settings/DeviceAdminAdd;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DeviceAdminAdd$5$3;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceAdminAdd$5$3;-><init>(Lcom/android/settings/DeviceAdminAdd$5;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 399
    :cond_4
    :goto_1
    return-void
.end method
