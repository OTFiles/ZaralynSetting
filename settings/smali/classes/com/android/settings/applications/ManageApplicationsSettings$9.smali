.class Lcom/android/settings/applications/ManageApplicationsSettings$9;
.super Landroid/os/AsyncTask;
.source "ManageApplicationsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplicationsSettings;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

.field final synthetic val$aom:Landroid/app/AppOpsManager;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$mIPm:Landroid/content/pm/IPackageManager;

.field final synthetic val$nm:Landroid/app/INotificationManager;

.field final synthetic val$npm:Landroid/net/NetworkPolicyManager;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsSettings;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/ManageApplicationsSettings;

    .line 1656
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$nm:Landroid/app/INotificationManager;

    iput-object p4, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$mIPm:Landroid/content/pm/IPackageManager;

    iput-object p5, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$aom:Landroid/app/AppOpsManager;

    iput-object p6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$npm:Landroid/net/NetworkPolicyManager;

    iput-object p7, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1656
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplicationsSettings$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .line 1658
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->this$0:Lcom/android/settings/applications/ManageApplicationsSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1659
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$pm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1661
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 1662
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 1665
    .local v4, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$nm:Landroid/app/INotificationManager;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v6, v7, v8, v5}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 1667
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1666
    :catch_0
    move-exception v6

    .line 1668
    :goto_1
    iget-boolean v6, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_0

    .line 1670
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 1672
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1661
    .end local v4
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1679
    .end local v3
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$mIPm:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V

    .line 1681
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1680
    :catch_1
    move-exception v3

    .line 1682
    :goto_2
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$aom:Landroid/app/AppOpsManager;

    invoke-virtual {v3}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 1683
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$npm:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v5}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v3

    .line 1685
    .local v3, "restrictedUids":[I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 1686
    .local v4, "currentUserId":I
    array-length v6, v3

    move v7, v2

    :goto_3
    if-ge v7, v6, :cond_3

    aget v8, v3, v7

    .line 1688
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v9, v4, :cond_2

    .line 1690
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$npm:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v8, v2}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1686
    .end local v8
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1693
    :cond_3
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsSettings$9;->val$handler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/applications/ManageApplicationsSettings$9$1;

    invoke-direct {v7, p0}, Lcom/android/settings/applications/ManageApplicationsSettings$9$1;-><init>(Lcom/android/settings/applications/ManageApplicationsSettings$9;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1711
    nop

    .local v2, "i":I
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 1712
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 1716
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings/AutoPreInstallFtpListApkService;->isReadboyPackageNeedGantPermisssion(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1717
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v8, v5, v5}, Lcom/android/settings/AutoPreInstallFtpListApkService;->requestPermisssionForApps(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 1721
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    goto :goto_5

    .line 1720
    :catch_2
    move-exception v7

    .line 1711
    .end local v6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1723
    .end local v2
    :cond_5
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    const v5, 0x7f1207fb

    invoke-virtual {v2, v5}, Lcom/android/settings/SettingsApp;->showAppToastLong(I)V

    .line 1724
    const/4 v2, 0x0

    return-object v2
.end method
