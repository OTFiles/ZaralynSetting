.class Lcom/android/settings/SettingsFactoryDslAppsInstallService$4;
.super Lcom/android/settings/apkinstall/InstallAndUninstallCallback;
.source "SettingsFactoryDslAppsInstallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsFactoryDslAppsInstallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    .line 485
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$4;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-direct {p0}, Lcom/android/settings/apkinstall/InstallAndUninstallCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishInstall(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "result"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 488
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "===divhee========onFinishInstall=21======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$4;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-static {v0, p2, p1, p3}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->access$500(Lcom/android/settings/SettingsFactoryDslAppsInstallService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 490
    return-void
.end method

.method public onFinishUninstall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "result"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 493
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "===divhee========onFinishUninstall=21======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$4;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-static {v0, p1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->access$600(Lcom/android/settings/SettingsFactoryDslAppsInstallService;Ljava/lang/String;)V

    .line 495
    return-void
.end method
