.class Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;
.super Ljava/lang/Object;
.source "SettingsFactoryAutoTMIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsFactoryAutoTMIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    .line 135
    iput-object p1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 138
    const/16 v0, 0x3840

    .line 139
    .local v0, "timeOutMax":I
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    invoke-static {v1}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->access$000(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->getWifiHotSsidInfo(Landroid/content/Context;)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    invoke-static {v1}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->access$108(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    invoke-static {v1}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->access$200(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    invoke-static {v1}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->access$300(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->access$002(Lcom/android/settings/SettingsFactoryAutoTMIntentService;Z)Z

    .line 149
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    .end local v1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    iget-object v2, v2, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    iget-object v2, v2, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->onHandleIntentEventCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 153
    :catch_1
    move-exception v1

    .line 154
    :goto_1
    goto :goto_2

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SettingsFactoryAutoTMIntentService$1;->this$0:Lcom/android/settings/SettingsFactoryAutoTMIntentService;

    invoke-static {v1}, Lcom/android/settings/SettingsFactoryAutoTMIntentService;->access$400(Lcom/android/settings/SettingsFactoryAutoTMIntentService;)V

    .line 158
    :goto_2
    return-void
.end method
