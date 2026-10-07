.class Lcom/android/settings/AutoPreInstallFtpListApkService$2$1;
.super Ljava/lang/Object;
.source "AutoPreInstallFtpListApkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AutoPreInstallFtpListApkService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/AutoPreInstallFtpListApkService$2;

.field final synthetic val$needInstallPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoPreInstallFtpListApkService$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/AutoPreInstallFtpListApkService$2;

    .line 491
    iput-object p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$2$1;->this$1:Lcom/android/settings/AutoPreInstallFtpListApkService$2;

    iput-object p2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$2$1;->val$needInstallPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 495
    new-instance v0, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskInstall;

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$2$1;->this$1:Lcom/android/settings/AutoPreInstallFtpListApkService$2;

    iget-object v1, v1, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskInstall;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;Lcom/android/settings/AutoPreInstallFtpListApkService$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$2$1;->val$needInstallPath:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskInstall;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 496
    return-void
.end method
