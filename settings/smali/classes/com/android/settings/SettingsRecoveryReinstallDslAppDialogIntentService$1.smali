.class Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService$1;
.super Ljava/lang/Object;
.source "SettingsRecoveryReinstallDslAppDialogIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    .line 90
    iput-object p1, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService$1;->this$0:Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService$1;->this$0:Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    invoke-static {v0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->access$000(Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :try_start_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===SettingsRecoveryReinstallDslAppDialogIntentService====divhee========mIsRrDslAppDialogPTMOver==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService$1;->this$0:Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    invoke-static {v2}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->access$000(Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->access$100()Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rby_guide_force_exit_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService$1;->this$0:Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    invoke-static {v0, v1}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->access$002(Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;Z)Z

    .line 102
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    .end local v0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService$1;->this$0:Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    iget-object v1, v1, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService$1;->this$0:Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    iget-object v1, v1, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 106
    :catch_1
    move-exception v0

    .line 107
    :goto_1
    goto :goto_2

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService$1;->this$0:Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    invoke-static {}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->access$100()Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->access$200(Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;Landroid/content/Context;)V

    .line 111
    invoke-static {}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;->access$100()Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogIntentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->prompteUserInstallReadboyApps(Landroid/content/Context;Landroid/content/Intent;)V

    .line 113
    :goto_2
    return-void
.end method
