.class public Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;
.super Landroid/os/AsyncTask;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyUpdateDeviceSnInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/DeviceInfoSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/DeviceInfoSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/DeviceInfoSettings;

    .line 1655
    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;->this$0:Lcom/android/settings/deviceinfo/DeviceInfoSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1655
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .line 1658
    const-class v0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;

    monitor-enter v0

    .line 1659
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1660
    const-wide/32 v1, 0x36ee80

    .line 1661
    .local v1, "delayTime":J
    iget-object v3, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;->this$0:Lcom/android/settings/deviceinfo/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->access$000(Lcom/android/settings/deviceinfo/DeviceInfoSettings;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;->this$0:Lcom/android/settings/deviceinfo/DeviceInfoSettings;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->access$000(Lcom/android/settings/deviceinfo/DeviceInfoSettings;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 1663
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;->this$0:Lcom/android/settings/deviceinfo/DeviceInfoSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->access$002(Lcom/android/settings/deviceinfo/DeviceInfoSettings;J)J

    .line 1664
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1665
    iget-object v3, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;->this$0:Lcom/android/settings/deviceinfo/DeviceInfoSettings;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v4

    const-string v5, "https://api-care.readboy.com/api/machine/info"

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->readDeviceSN_InfoFromFWQ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1666
    .local v3, "netSnOtaVer":Ljava/lang/String;
    monitor-exit v0

    return-object v3

    .line 1670
    .end local v1
    .end local v3
    :cond_1
    monitor-exit v0

    .line 1671
    const/4 v0, 0x0

    return-object v0

    .line 1670
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1655
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;->onCancelled(Ljava/lang/String;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/String;)V
    .locals 0
    .param p1, "aBoolean"    # Ljava/lang/String;

    .line 1693
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 1694
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1655
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "aBoolean"    # Ljava/lang/String;

    .line 1681
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1683
    :try_start_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==divhee==========onPostExecute==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;->this$0:Lcom/android/settings/deviceinfo/DeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->access$100(Lcom/android/settings/deviceinfo/DeviceInfoSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceInfoSettings$MyUpdateDeviceSnInfoTask;->this$0:Lcom/android/settings/deviceinfo/DeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->access$100(Lcom/android/settings/deviceinfo/DeviceInfoSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1688
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 1687
    :catch_0
    move-exception v0

    .line 1689
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1676
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1677
    return-void
.end method
