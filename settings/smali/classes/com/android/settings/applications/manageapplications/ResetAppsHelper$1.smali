.class Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    .line 113
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 116
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$000(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 121
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x3

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v6}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v9, "miscellaneous"

    invoke-interface {v6, v7, v8, v9, v4}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v6

    .line 124
    .local v6, "channel":Landroid/app/NotificationChannel;
    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v7}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v7, v8, v9}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "miscellaneous"

    .line 125
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 126
    :cond_0
    invoke-virtual {v6, v5}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 127
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v7}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v7, v8, v9, v6}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 129
    :cond_1
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v7}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v7, v8, v9, v4}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 131
    .end local v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 130
    :catch_0
    move-exception v6

    .line 132
    :goto_1
    iget-boolean v6, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_2

    .line 133
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v6}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$000(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 135
    invoke-static {v5, v6}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$200(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 136
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$000(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v1, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 118
    .end local v3
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 143
    .end local v2
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$300(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V

    .line 145
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 144
    :catch_1
    move-exception v2

    .line 146
    :goto_2
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$400(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 147
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$500(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v2

    .line 149
    .local v2, "restrictedUids":[I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 150
    .local v3, "currentUserId":I
    array-length v4, v2

    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_5

    aget v6, v2, v5

    .line 152
    .local v6, "uid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v7, v3, :cond_4

    .line 153
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v7}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$500(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v7

    invoke-virtual {v7, v6, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 150
    .end local v6
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 156
    :cond_5
    return-void
.end method
