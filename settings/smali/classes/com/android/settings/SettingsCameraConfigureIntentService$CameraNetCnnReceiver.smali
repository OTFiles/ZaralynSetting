.class public Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsCameraConfigureIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsCameraConfigureIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraNetCnnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsCameraConfigureIntentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsCameraConfigureIntentService;

    .line 230
    iput-object p1, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "action":Ljava/lang/String;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=========divhee=========CameraConnectionReceiver========"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v1}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$300(Lcom/android/settings/SettingsCameraConfigureIntentService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v2}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$200(Lcom/android/settings/SettingsCameraConfigureIntentService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    iget-object v1, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v1}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$300(Lcom/android/settings/SettingsCameraConfigureIntentService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v2}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$200(Lcom/android/settings/SettingsCameraConfigureIntentService;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$CameraNetCnnReceiver;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v3}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$500(Lcom/android/settings/SettingsCameraConfigureIntentService;)Ljava/util/Random;

    move-result-object v3

    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 245
    :cond_0
    :goto_0
    return-void
.end method
