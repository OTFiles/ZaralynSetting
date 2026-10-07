.class Lcom/android/settings/SettingsCameraConfigureIntentService$1;
.super Ljava/lang/Object;
.source "SettingsCameraConfigureIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsCameraConfigureIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsCameraConfigureIntentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsCameraConfigureIntentService;

    .line 168
    iput-object p1, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$1;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 171
    const-wide/32 v0, 0x36ee80

    .line 173
    .local v0, "delayTime":J
    iget-object v2, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$1;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v2}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$000(Lcom/android/settings/SettingsCameraConfigureIntentService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 176
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$1;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v2}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$100(Lcom/android/settings/SettingsCameraConfigureIntentService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$1;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v6}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$100(Lcom/android/settings/SettingsCameraConfigureIntentService;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v6, 0x18

    mul-long/2addr v6, v0

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    .line 177
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$1;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v2}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$300(Lcom/android/settings/SettingsCameraConfigureIntentService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$1;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v3}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$200(Lcom/android/settings/SettingsCameraConfigureIntentService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object v2, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$1;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v2}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$300(Lcom/android/settings/SettingsCameraConfigureIntentService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$1;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v3}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$200(Lcom/android/settings/SettingsCameraConfigureIntentService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 183
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    .end local v2
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$1;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    iget-object v3, v3, Lcom/android/settings/SettingsCameraConfigureIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$1;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    iget-object v3, v3, Lcom/android/settings/SettingsCameraConfigureIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 189
    :catch_1
    move-exception v2

    .line 190
    :goto_1
    goto :goto_2

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$1;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    iget-object v3, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$1;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v2, v3}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$400(Lcom/android/settings/SettingsCameraConfigureIntentService;Landroid/content/Context;)V

    .line 194
    :goto_2
    return-void
.end method
