.class Lcom/android/settings/SettingsFactoryDslAppsInstallService$3;
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

    .line 331
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$3;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$3;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$3;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->stopMyselfServiceEvent(Landroid/content/Context;)V

    .line 335
    return-void
.end method
