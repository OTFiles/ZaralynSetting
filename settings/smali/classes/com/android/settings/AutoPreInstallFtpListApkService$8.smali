.class Lcom/android/settings/AutoPreInstallFtpListApkService$8;
.super Lcom/android/settings/apkinstall/InstallAndUninstallCallback;
.source "AutoPreInstallFtpListApkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoPreInstallFtpListApkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 2508
    iput-object p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$8;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

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

    .line 2511
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "===divhee========onFinishInstall=22======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    invoke-static {p2}, Lcom/android/settings/AutoPreInstallFtpListApkService;->GantPermisssionForAllReadboyApps(Ljava/lang/String;)V

    .line 2513
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$8;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v0, p2, p1, p3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1200(Lcom/android/settings/AutoPreInstallFtpListApkService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2514
    return-void
.end method

.method public onFinishUninstall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "result"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 2517
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "===divhee========onFinishUninstall=22======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$8;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1300(Lcom/android/settings/AutoPreInstallFtpListApkService;Ljava/lang/String;)V

    .line 2519
    return-void
.end method
