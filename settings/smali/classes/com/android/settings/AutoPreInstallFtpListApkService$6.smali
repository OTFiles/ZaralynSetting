.class Lcom/android/settings/AutoPreInstallFtpListApkService$6;
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

    .line 1196
    iput-object p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$6;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1199
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$6;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$600(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$6;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    iget-object v1, v1, Lcom/android/settings/AutoPreInstallFtpListApkService;->restartDownloadTaskChecked:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1200
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$6;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$300(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, "isNeedRestartDownloadCheck":Z
    const/4 v1, 0x0

    .line 1203
    .local v1, "tempDownloadTaskNumber":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v0

    move v0, v2

    .local v0, "inum":I
    .local v1, "isNeedRestartDownloadCheck":Z
    .local v3, "tempDownloadTaskNumber":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$6;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$300(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1204
    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$6;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v4}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$300(Lcom/android/settings/AutoPreInstallFtpListApkService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    .line 1205
    .local v4, "preAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    const/4 v5, -0x1

    .line 1206
    .local v5, "isNeedDownload":I
    if-eqz v4, :cond_1

    iget-wide v6, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-boolean v6, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_is_loacal:Z

    if-nez v6, :cond_1

    iget-boolean v6, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    if-nez v6, :cond_1

    iget v6, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 1207
    iget-object v6, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$6;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    iget-wide v8, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    iget-object v10, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$6;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v10}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$100(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/app/DownloadManager;

    move-result-object v10

    invoke-static {v6, v8, v9, v10}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$200(Landroid/content/Context;JLandroid/app/DownloadManager;)I

    move-result v5

    .line 1208
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1209
    add-int/lit8 v3, v3, 0x1

    .line 1211
    :cond_0
    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    if-eq v5, v6, :cond_1

    if-eq v5, v7, :cond_1

    .line 1214
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$6;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$100(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/app/DownloadManager;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [J

    iget-wide v8, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    aput-wide v8, v7, v2

    invoke-virtual {v6, v7}, Landroid/app/DownloadManager;->forceDownload([J)V

    .line 1215
    const-string v6, "AutoPreInstallAPK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "===restartDownload======divhee========restartDownloadTaskChecked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1216
    :catch_0
    move-exception v6

    .line 1217
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1218
    const-string v7, "AutoPreInstallAPK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "===error======divhee========restartDownloadTaskChecked="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    .end local v6
    :cond_1
    :goto_1
    const-string v6, "AutoPreInstallAPK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "=count==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "=========divhee========restartDownloadTaskChecked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    if-ltz v5, :cond_2

    .line 1224
    const/4 v1, 0x1

    .line 1203
    .end local v4
    .end local v5
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1227
    .end local v0
    :cond_3
    if-eqz v1, :cond_4

    .line 1228
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$6;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    invoke-static {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->access$600(Lcom/android/settings/AutoPreInstallFtpListApkService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$6;->this$0:Lcom/android/settings/AutoPreInstallFtpListApkService;

    iget-object v2, v2, Lcom/android/settings/AutoPreInstallFtpListApkService;->restartDownloadTaskChecked:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1231
    .end local v1
    .end local v3
    :cond_4
    return-void
.end method
