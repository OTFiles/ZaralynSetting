.class public Lcom/android/settings/AutoPreInstallFtpListApkService$MyPreInstallFtpApkListTask;
.super Landroid/os/AsyncTask;
.source "AutoPreInstallFtpListApkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoPreInstallFtpListApkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPreInstallFtpApkListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;


# direct methods
.method public constructor <init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 1588
    iput-object p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$MyPreInstallFtpApkListTask;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .line 1591
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$MyPreInstallFtpApkListTask;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1002(Lcom/android/settings/AutoPreInstallFtpListApkService;I)I

    .line 1592
    const-string v0, ""

    const-string v1, "=====divhee====MyAllNewsForNetWork(Params... params) called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$MyPreInstallFtpApkListTask;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-virtual {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->searchAndInstallAllPreInstallLocalApks()V

    .line 1595
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$MyPreInstallFtpApkListTask;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-virtual {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->downloadPreInstallFtpApkList()V

    .line 1599
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1588
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyPreInstallFtpApkListTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
