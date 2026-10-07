.class public Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;
.super Landroid/os/AsyncTask;
.source "SettingsCameraConfigureIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsCameraConfigureIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyUpdateCameraInfoTask"
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
.field final synthetic this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsCameraConfigureIntentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsCameraConfigureIntentService;

    .line 528
    iput-object p1, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .line 531
    const-class v0, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;

    monitor-enter v0

    .line 532
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    const-wide/32 v1, 0x36ee80

    .line 534
    .local v1, "delayTime":J
    iget-object v3, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v3}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$100(Lcom/android/settings/SettingsCameraConfigureIntentService;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v5}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$100(Lcom/android/settings/SettingsCameraConfigureIntentService;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x18

    mul-long/2addr v5, v1

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 536
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$102(Lcom/android/settings/SettingsCameraConfigureIntentService;J)J

    .line 537
    iget-object v3, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    iget-object v4, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    iget-object v5, p0, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;->this$0:Lcom/android/settings/SettingsCameraConfigureIntentService;

    invoke-static {v5}, Lcom/android/settings/SettingsCameraConfigureIntentService;->access$600(Lcom/android/settings/SettingsCameraConfigureIntentService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/SettingsCameraConfigureIntentService;->readCameraInfoFromFWQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsCameraConfigureIntentService;->AnysCameraRequestResultData(Ljava/lang/String;)I

    .line 540
    .end local v1
    :cond_1
    monitor-exit v0

    .line 541
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 540
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 528
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .line 556
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 557
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 528
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .line 551
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 552
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 528
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsCameraConfigureIntentService$MyUpdateCameraInfoTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 546
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 547
    return-void
.end method
