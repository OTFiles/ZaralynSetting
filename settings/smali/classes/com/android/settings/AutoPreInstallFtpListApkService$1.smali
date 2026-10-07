.class Lcom/android/settings/AutoPreInstallFtpListApkService$1;
.super Ljava/lang/Object;
.source "AutoPreInstallFtpListApkService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 415
    iput-object p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$1;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$1;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$1;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$000(Lcom/android/settings/AutoPreInstallFtpListApkService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->startLoadingPreInstallAppsEvent(Z)V

    .line 421
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 422
    .end local v0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$1;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$002(Lcom/android/settings/AutoPreInstallFtpListApkService;Z)Z

    .line 423
    return-void
.end method
