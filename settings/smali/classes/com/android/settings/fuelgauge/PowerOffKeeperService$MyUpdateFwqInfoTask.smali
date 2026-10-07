.class public Lcom/android/settings/fuelgauge/PowerOffKeeperService$MyUpdateFwqInfoTask;
.super Landroid/os/AsyncTask;
.source "PowerOffKeeperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerOffKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyUpdateFwqInfoTask"
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
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    .line 1218
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$MyUpdateFwqInfoTask;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .line 1221
    const-class v0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$MyUpdateFwqInfoTask;

    monitor-enter v0

    .line 1222
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1223
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$MyUpdateFwqInfoTask;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->isNowCanUpdateDataFromFwq()I

    move-result v1

    .line 1224
    .local v1, "iNowCanUpdateStatus":I
    if-lez v1, :cond_1

    .line 1226
    sget-object v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mLastReqFwqFwqUpdateTime:J

    .line 1227
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1228
    sget-object v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_StartTime:J

    .line 1229
    sget-object v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    sget-object v3, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$900(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/util/Random;

    move-result-object v3

    const v4, 0x1b7740

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sget-object v5, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mKeeperService:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->access$900(Lcom/android/settings/fuelgauge/PowerOffKeeperService;)Ljava/util/Random;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x36ee80

    rem-int/2addr v3, v4

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->mRandom_ReqFwq_DelayTime:J

    .line 1231
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerOffKeeperService$MyUpdateFwqInfoTask;->this$0:Lcom/android/settings/fuelgauge/PowerOffKeeperService;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->AnysFwqRequestResultData()J

    .line 1234
    .end local v1
    :cond_1
    monitor-exit v0

    .line 1235
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1234
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

    .line 1218
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$MyUpdateFwqInfoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .line 1250
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 1251
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1218
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$MyUpdateFwqInfoTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .line 1245
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1246
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1218
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerOffKeeperService$MyUpdateFwqInfoTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1240
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1241
    return-void
.end method
