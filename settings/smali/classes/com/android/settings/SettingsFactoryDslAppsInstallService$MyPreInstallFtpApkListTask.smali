.class public Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyPreInstallFtpApkListTask;
.super Landroid/os/AsyncTask;
.source "SettingsFactoryDslAppsInstallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsFactoryDslAppsInstallService;
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
.field final synthetic this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    .line 342
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyPreInstallFtpApkListTask;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .line 345
    const-string v0, ""

    const-string v1, "=====divhee====MyAllNewsForNetWork(Params... params) called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyPreInstallFtpApkListTask;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-virtual {v0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->autoDslInstallLocalApks()V

    .line 347
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 342
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyPreInstallFtpApkListTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
