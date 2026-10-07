.class Lcom/android/settings/SettingsFactoryDslAppsInstallService$1;
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

    .line 159
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$1;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$1;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-static {v0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->access$000(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$1;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-static {v0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->access$200(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$1;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-static {v1}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->access$100(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    .end local v0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$1;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    iget-object v1, v1, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$1;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    iget-object v1, v1, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 173
    :catch_1
    move-exception v0

    .line 174
    :goto_1
    goto :goto_2

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsFactoryDslAppsInstallService$1;->this$0:Lcom/android/settings/SettingsFactoryDslAppsInstallService;

    invoke-static {v0}, Lcom/android/settings/SettingsFactoryDslAppsInstallService;->access$300(Lcom/android/settings/SettingsFactoryDslAppsInstallService;)V

    .line 178
    :goto_2
    return-void
.end method
