.class Lcom/android/settings/AutoPreInstallFtpListApkService$11;
.super Ljava/lang/Object;
.source "AutoPreInstallFtpListApkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoPreInstallFtpListApkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoPreInstallFtpListApkService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/AutoPreInstallFtpListApkService;

    .line 3273
    iput-object p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 3277
    const/4 v0, 0x0

    .line 3278
    .local v0, "speedValue":F
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v3

    .line 3279
    .local v3, "isCnnedWifi":I
    const/4 v4, 0x2

    const v5, 0x927c0

    const/4 v6, 0x0

    if-ne v3, v4, :cond_3

    .line 3281
    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-virtual {v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getWifiFlow()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v4

    .line 3282
    .local v4, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    iget-object v7, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    iget-object v8, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v8}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1700(Lcom/android/settings/AutoPreInstallFtpListApkService;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1602(Lcom/android/settings/AutoPreInstallFtpListApkService;J)J

    .line 3283
    iget-object v7, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-virtual {v4}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1702(Lcom/android/settings/AutoPreInstallFtpListApkService;J)J

    .line 3284
    iget-object v7, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v7}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1700(Lcom/android/settings/AutoPreInstallFtpListApkService;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v9}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1600(Lcom/android/settings/AutoPreInstallFtpListApkService;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    div-long/2addr v7, v1

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    long-to-float v0, v7

    .line 3285
    const/high16 v7, 0x41200000    # 10.0f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_0

    .line 3286
    iget-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v5, v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1802(Lcom/android/settings/AutoPreInstallFtpListApkService;I)I

    goto :goto_0

    .line 3288
    :cond_0
    iget-object v7, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v7}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1800(Lcom/android/settings/AutoPreInstallFtpListApkService;)I

    move-result v7

    const v8, 0x124f80

    if-gt v7, v8, :cond_1

    .line 3289
    iget-object v7, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v7}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1808(Lcom/android/settings/AutoPreInstallFtpListApkService;)I

    .line 3291
    :cond_1
    iget-object v7, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v7}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1800(Lcom/android/settings/AutoPreInstallFtpListApkService;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x1388

    if-lt v7, v5, :cond_2

    .line 3293
    iget-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    const-string v7, "wifi"

    invoke-virtual {v5, v7}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 3294
    .local v5, "manager":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_2

    .line 3295
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 3296
    .local v7, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_2

    .line 3297
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/settings/AutoPreInstallFtpListApkService;->isReadboyDslHotSSID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3298
    iget-object v8, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v8, v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1802(Lcom/android/settings/AutoPreInstallFtpListApkService;I)I

    .line 3299
    iget-object v8, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v8, v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1900(Lcom/android/settings/AutoPreInstallFtpListApkService;Z)V

    .line 3305
    .end local v4
    .end local v5
    .end local v7
    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    if-nez v3, :cond_5

    .line 3307
    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$2008(Lcom/android/settings/AutoPreInstallFtpListApkService;)I

    .line 3308
    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$2000(Lcom/android/settings/AutoPreInstallFtpListApkService;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x1388

    if-lt v4, v5, :cond_5

    .line 3309
    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v4, v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$2002(Lcom/android/settings/AutoPreInstallFtpListApkService;I)I

    .line 3311
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$600(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v5}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1100(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3312
    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$600(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v5}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1100(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3315
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    goto :goto_1

    .line 3314
    :catch_0
    move-exception v4

    .line 3318
    :cond_5
    :goto_1
    :try_start_2
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "======divhee===================mFlowSpeedRunnable====="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    .end local v0
    .end local v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3319
    :catch_1
    move-exception v0

    .line 3321
    :goto_2
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$600(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$2100(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3322
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$600(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$11;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$2100(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3323
    return-void
.end method
