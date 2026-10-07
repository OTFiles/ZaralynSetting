.class Lcom/android/settings/SettingsFactoryDslAppsInstallService$2;
.super Ljava/lang/Object;
.source "SettingsFactoryDslAppsInstallService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 325
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$2;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 327
    new-instance v0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyPreInstallFtpApkListTask;

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$2;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyPreInstallFtpApkListTask;-><init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyPreInstallFtpApkListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 328
    return-void
.end method
