.class Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskInstall;
.super Landroid/os/AsyncTask;
.source "AutoPreInstallFtpListApkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoPreInstallFtpListApkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTaskInstall"
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
.method private constructor <init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V
    .locals 0

    .line 2835
    iput-object p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskInstall;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/AutoPreInstallFtpListApkService;Lcom/android/settings/AutoPreInstallFtpListApkService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;
    .param p2, "x1"    # Lcom/android/settings/AutoPreInstallFtpListApkService$1;

    .line 2835
    invoke-direct {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskInstall;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .line 2839
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->doCheckThenResetEbagLimit(I)V

    .line 2840
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskInstall;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    aget-object v0, p1, v0

    invoke-static {v1, v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1400(Lcom/android/settings/AutoPreInstallFtpListApkService;Ljava/lang/String;)V

    .line 2841
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2835
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskInstall;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
