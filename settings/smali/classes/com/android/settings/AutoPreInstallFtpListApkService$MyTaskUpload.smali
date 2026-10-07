.class Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;
.super Landroid/os/AsyncTask;
.source "AutoPreInstallFtpListApkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoPreInstallFtpListApkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTaskUpload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;


# direct methods
.method private constructor <init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V
    .locals 0

    .line 2752
    iput-object p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/AutoPreInstallFtpListApkService;Lcom/android/settings/AutoPreInstallFtpListApkService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p2, "x1"    # Lcom/android/settings/AutoPreInstallFtpListApkService$1;

    .line 2752
    invoke-direct {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 2755
    const-string v0, "AutoPreInstallAPK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==divhee===Upload===doInBackground(Params... params) called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    aget-object v1, p1, v2

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AutoPreInstallFtpListApkService;->uploadInstalledPreApks(Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Ljava/lang/String;)V

    .line 2757
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2752
    check-cast p1, [Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;->doInBackground([Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
