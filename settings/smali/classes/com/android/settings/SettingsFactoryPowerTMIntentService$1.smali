.class Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;
.super Ljava/lang/Object;
.source "SettingsFactoryPowerTMIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsFactoryPowerTMIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    .line 140
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 143
    const/16 v0, 0x3840

    .line 145
    .local v0, "timeOutMax":I
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-static {v1}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$000(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)Z

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v1, :cond_3

    .line 148
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-static {v1}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$100(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->getWifiHotSsidInfo(Landroid/content/Context;)V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-static {v1}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$208(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)I

    move-result v1

    if-gt v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-static {v1}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$300(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-static {v1}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$400(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$002(Lcom/android/settings/SettingsFactoryPowerTMIntentService;Z)Z

    .line 157
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    .end local v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    :try_start_3
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    iget-object v2, v2, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    iget-object v2, v2, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 161
    :catch_1
    move-exception v1

    .line 162
    :goto_1
    goto :goto_2

    .line 164
    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryPowerTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryPowerTMIntentService;

    invoke-static {v1}, Lcom/android/settings/SettingsFactoryPowerTMIntentService;->access$500(Lcom/android/settings/SettingsFactoryPowerTMIntentService;)V

    .line 167
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    goto :goto_3

    .line 166
    :catch_2
    move-exception v1

    .line 168
    :goto_3
    return-void
.end method
