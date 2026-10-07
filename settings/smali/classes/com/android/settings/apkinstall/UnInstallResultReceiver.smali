.class public Lcom/android/settings/apkinstall/UnInstallResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UnInstallResultReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "action":Ljava/lang/String;
    const-string v1, "UnInstallResultReceiver"

    const-string v2, "=999==divhee===\u6536\u5230\u5378\u8f7d\u53cd\u9988\u5e7f\u64ad\u4e86"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    if-eqz p2, :cond_1

    .line 19
    const-string v1, "android.content.pm.extra.STATUS"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 21
    .local v1, "status":I
    const-string v2, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "uninstall_pkg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "unpkgName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 24
    .local v4, "msg":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 26
    const-string v5, "UnInstallResultReceiver"

    const-string v6, "APP UnInstall Success!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 29
    :cond_0
    const-string v5, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    const-string v5, "UnInstallResultReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnInstall FAILURE status_massage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :cond_1
    :goto_0
    return-void
.end method
