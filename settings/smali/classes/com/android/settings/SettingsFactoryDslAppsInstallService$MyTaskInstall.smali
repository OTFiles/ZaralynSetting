.class Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyTaskInstall;
.super Landroid/os/AsyncTask;
.source "SettingsFactoryDslAppsInstallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsFactoryDslAppsInstallService;
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
.field final synthetic this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;


# direct methods
.method private constructor <init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyTaskInstall;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService;Lcom/android/settings/SettingsFactoryDslAppsInstallService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/SettingsFactoryDslAppsInstallService;
    .param p2, "x1"    # Lcom/android/settings/SettingsFactoryDslAppsInstallService$1;

    .line 752
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyTaskInstall;-><init>(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 755
    const-string v0, "DslAppsInstall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==divhee===install===doInBackground(Params... params) called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyTaskInstall;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    aget-object v1, p1, v2

    invoke-static {v0, v1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->access$700(Lcom/android/settings/SettingsFactoryDslAppsInstallService;Ljava/lang/String;)V

    .line 757
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 752
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService$MyTaskInstall;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
