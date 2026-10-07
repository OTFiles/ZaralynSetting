.class Lcom/android/settings/AutoPreInstallFtpListApkService$2;
.super Landroid/content/BroadcastReceiver;
.source "AutoPreInstallFtpListApkService.java"


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

    .line 465
    iput-object p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v0, p0

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "action":Ljava/lang/String;
    const-string v2, "AutoPreInstallAPK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "====divhee======CNNDownloadReceiver==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0xbb8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    .line 473
    const-string v2, "extra_download_id"

    const-wide/16 v7, -0x1

    move-object/from16 v9, p2

    invoke-virtual {v9, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 474
    .local v7, "downloadId":J
    iget-object v2, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v2}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$100(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/app/DownloadManager;

    move-result-object v2

    move-object/from16 v10, p1

    invoke-static {v10, v7, v8, v2}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$200(Landroid/content/Context;JLandroid/app/DownloadManager;)I

    move-result v2

    .line 479
    .local v2, "status":I
    move v11, v5

    .local v11, "inum":I
    :goto_0
    iget-object v12, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v12}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$300(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 480
    iget-object v12, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v12}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$300(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 481
    .local v12, "preAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    iget-wide v13, v12, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    cmp-long v13, v13, v7

    const/4 v15, 0x0

    const/16 v14, 0x8

    if-nez v13, :cond_1

    .line 483
    iput v2, v12, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    .line 484
    iget v13, v12, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    if-ne v13, v14, :cond_3

    .line 485
    iget-object v13, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    iget-object v14, v12, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-virtual {v13, v14, v7, v8}, Lcom/android/settings/AutoPreInstallFtpListApkService;->isFileDownloadTrueSucessfull(Ljava/lang/String;J)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 487
    new-instance v13, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;

    iget-object v14, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-direct {v13, v14, v15}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;Lcom/android/settings/AutoPreInstallFtpListApkService$1;)V

    new-array v14, v6, [Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    aput-object v12, v14, v5

    invoke-virtual {v13, v14}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUpload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 490
    iget-object v13, v12, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    .line 491
    .local v13, "needInstallPath":Ljava/lang/String;
    iget-object v14, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v14}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$600(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/settings/AutoPreInstallFtpListApkService$2$1;

    invoke-direct {v15, v0, v13}, Lcom/android/settings/AutoPreInstallFtpListApkService$2$1;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService$2;Ljava/lang/String;)V

    invoke-virtual {v14, v15, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 499
    .end local v13
    goto :goto_1

    .line 500
    :cond_0
    const/4 v13, -0x1

    iput v13, v12, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    .line 501
    iget-object v13, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    iget-object v14, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v13, v14, v12, v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$700(Lcom/android/settings/AutoPreInstallFtpListApkService;Landroid/content/Context;Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Z)Ljava/lang/String;

    goto :goto_1

    .line 504
    :cond_1
    iget-wide v3, v12, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_id:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_3

    .line 506
    iput v2, v12, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_ok:I

    .line 507
    iget v3, v12, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_ok:I

    if-ne v3, v14, :cond_3

    .line 508
    iget-object v3, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    iget-object v4, v12, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    invoke-virtual {v3, v4, v7, v8}, Lcom/android/settings/AutoPreInstallFtpListApkService;->isFileDownloadTrueSucessfull(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 509
    new-instance v3, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUnzipDataFile;

    iget-object v4, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-direct {v3, v4, v15}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUnzipDataFile;-><init>(Lcom/android/settings/AutoPreInstallFtpListApkService;Lcom/android/settings/AutoPreInstallFtpListApkService$1;)V

    new-array v4, v6, [Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    aput-object v12, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/settings/AutoPreInstallFtpListApkService$MyTaskUnzipDataFile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 511
    :cond_2
    const/4 v3, -0x1

    iput v3, v12, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_ok:I

    .line 512
    iget-object v3, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    iget-object v4, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v3, v4, v12, v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$900(Lcom/android/settings/AutoPreInstallFtpListApkService;Landroid/content/Context;Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;Z)Ljava/lang/String;

    .line 479
    .end local v12
    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v3, 0xbb8

    goto/16 :goto_0

    .line 575
    .end local v2
    .end local v7
    .end local v11
    :cond_4
    goto/16 :goto_2

    :cond_5
    move-object/from16 v10, p1

    move-object/from16 v9, p2

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 576
    iget-object v2, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 577
    .local v2, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 578
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    const-string v4, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "====divhee======startLoadingPreInstallAppsEvent======="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_6

    move v5, v6

    nop

    :cond_6
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 580
    const-string v4, "AutoPreInstallAPK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v7}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$300(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "=00000==divhee====preinstall====\u7f51\u7edc\u5df2\u8fde\u63a5====mAllTryInstalled="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v7}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1000(Lcom/android/settings/AutoPreInstallFtpListApkService;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v6, :cond_7

    .line 582
    iget-object v4, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v4, v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$002(Lcom/android/settings/AutoPreInstallFtpListApkService;Z)Z

    .line 585
    :cond_7
    iget-object v4, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$600(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v5}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1100(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 586
    iget-object v4, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$600(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$2;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v5}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$1100(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 588
    .end local v2
    .end local v3
    :cond_8
    :goto_2
    return-void
.end method
