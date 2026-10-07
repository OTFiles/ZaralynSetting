.class public Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
.super Ljava/lang/Object;
.source "AutoPreInstallFtpListApkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoPreInstallFtpListApkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreAppInfo"
.end annotation


# instance fields
.field public app_add_time:Ljava/lang/String;

.field public app_developer:Ljava/lang/String;

.field public app_download_id:J

.field public app_download_ok:I

.field public app_download_retry_times:I

.field public app_download_url:Ljava/lang/String;

.field public app_force_download:Z

.field public app_id:Ljava/lang/String;

.field public app_install_test:Z

.field public app_installed_ok:Z

.field public app_is_loacal:Z

.field public app_local_path:Ljava/lang/String;

.field public app_model:Ljava/lang/String;

.field public app_pkg_name:Ljava/lang/String;

.field public app_show_name:Ljava/lang/String;

.field public app_ver_code:Ljava/lang/String;

.field public app_version:Ljava/lang/String;

.field public data_download_id:J

.field public data_download_ok:I

.field public data_download_url:Ljava/lang/String;

.field public data_unzip_file:Ljava/lang/String;

.field public data_unzip_first_folder:Ljava/lang/String;

.field public data_unzip_ok:Z

.field public data_unzip_root_folder:Ljava/lang/String;

.field public data_unzip_test:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1381
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    .line 1383
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_retry_times:I

    .line 1385
    iput-boolean v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    .line 1387
    iput-boolean v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    .line 1389
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    .line 1391
    iput-boolean v2, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_is_loacal:Z

    .line 1395
    iput-wide v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_id:J

    .line 1405
    iput v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_ok:I

    return-void
.end method


# virtual methods
.method public anysDataDownloadInfoByUrl(Ljava/lang/String;)Z
    .locals 7
    .param p1, "data_url"    # Ljava/lang/String;

    .line 1444
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 1445
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1447
    iput-object p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_url:Ljava/lang/String;

    .line 1448
    iput-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_test:Z

    .line 1449
    iput v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_ok:I

    .line 1450
    iput-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_ok:Z

    .line 1451
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1452
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 1453
    .local v4, "datapath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_root_folder:Ljava/lang/String;

    .line 1454
    iget-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_root_folder:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_root_folder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/.etc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_root_folder:Ljava/lang/String;

    goto :goto_0

    .line 1457
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_root_folder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".etc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_root_folder:Ljava/lang/String;

    .line 1459
    .end local v4
    :goto_0
    goto :goto_1

    .line 1460
    :cond_1
    const-string v4, "/storage/emulated/0/.etc/"

    iput-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_root_folder:Ljava/lang/String;

    .line 1462
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_root_folder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    .line 1463
    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1464
    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 1466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_first_folder:Ljava/lang/String;

    goto :goto_2

    .line 1468
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".zip"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_first_folder:Ljava/lang/String;

    .line 1470
    :goto_2
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    const-string v3, "/storage/emulated/0/.etc/"

    const-string v4, "/storage/emulated/0/Download/"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    goto :goto_3

    .line 1472
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_first_folder:Ljava/lang/String;

    .line 1475
    :goto_3
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_first_folder:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1476
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_first_folder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".unzipok"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1477
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1478
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1483
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_4

    .line 1481
    :catch_0
    move-exception v1

    .line 1482
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1484
    .end local v1
    :goto_4
    return v2

    .line 1487
    .end local v0
    :cond_5
    return v1
.end method

.method public checkDataDownloadUnzipOk()Z
    .locals 4

    .line 1423
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1424
    return v1

    .line 1426
    :cond_0
    iget v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_ok:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_ok:Z

    if-eqz v0, :cond_1

    .line 1427
    return v1

    .line 1429
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_first_folder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1430
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_first_folder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".unzipok"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1431
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1432
    return v1

    .line 1435
    .end local v0
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected cloneMySelf(Z)Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    .locals 3
    .param p1, "resetRetryTimes"    # Z

    .line 1551
    new-instance v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;

    invoke-direct {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;-><init>()V

    .line 1553
    .local v0, "preAppInfo":Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_id:Ljava/lang/String;

    .line 1554
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_url:Ljava/lang/String;

    .line 1555
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    .line 1556
    iget-wide v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    iput-wide v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    .line 1557
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_retry_times:I

    :goto_0
    iput v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_retry_times:I

    .line 1558
    iget-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    iput-boolean v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    .line 1559
    iget-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    iput-boolean v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    .line 1560
    iget v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    iput v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    .line 1561
    iget-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_is_loacal:Z

    iput-boolean v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_is_loacal:Z

    .line 1562
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_url:Ljava/lang/String;

    .line 1563
    iget-wide v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_id:J

    iput-wide v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_id:J

    .line 1564
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_root_folder:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_root_folder:Ljava/lang/String;

    .line 1565
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_first_folder:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_first_folder:Ljava/lang/String;

    .line 1566
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    .line 1567
    iget-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_test:Z

    iput-boolean v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_test:Z

    .line 1568
    iget v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_ok:I

    iput v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_ok:I

    .line 1569
    iget-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_ok:Z

    iput-boolean v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_ok:Z

    .line 1570
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_show_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_show_name:Ljava/lang/String;

    .line 1571
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    .line 1572
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_version:Ljava/lang/String;

    .line 1573
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_ver_code:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_ver_code:Ljava/lang/String;

    .line 1574
    iget-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_force_download:Z

    iput-boolean v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_force_download:Z

    .line 1575
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_developer:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_developer:Ljava/lang/String;

    .line 1576
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_add_time:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_add_time:Ljava/lang/String;

    .line 1577
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_model:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_model:Ljava/lang/String;

    .line 1579
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1578
    :catch_0
    move-exception v1

    .line 1580
    :goto_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1492
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    const-string v1, ";app_download_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    const-string v1, ";app_local_path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_local_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    const-string v1, ";app_download_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    iget-wide v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1500
    const-string v1, ";app_download_retry_times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    iget v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_retry_times:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1502
    const-string v1, ";app_install_test="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    iget-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_install_test:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1504
    const-string v1, ";app_installed_ok="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    iget-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_installed_ok:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1506
    const-string v1, ";app_download_ok="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    iget v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_download_ok:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1508
    const-string v1, ";app_is_loacal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    iget-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_is_loacal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1510
    const-string v1, ";data_download_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    const-string v1, ";data_download_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    iget-wide v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1514
    const-string v1, ";data_unzip_folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_root_folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    const-string v1, ";data_unzip_first_folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_first_folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    const-string v1, ";data_unzip_file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    const-string v1, ";data_unzip_test="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    iget-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_test:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1522
    const-string v1, ";data_download_ok="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    iget v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_download_ok:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1524
    const-string v1, ";data_unzip_ok="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    iget-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->data_unzip_ok:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1526
    const-string v1, ";app_show_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_show_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    const-string v1, ";app_pkg_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_pkg_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    const-string v1, ";app_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    const-string v1, ";app_ver_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_ver_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    const-string v1, ";app_force_download="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    iget-boolean v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_force_download:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1536
    const-string v1, ";app_developer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_developer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    const-string v1, ";app_add_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_add_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    const-string v1, ";app_model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    iget-object v1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$PreAppInfo;->app_model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    const-string v1, ";end\uff01\uff01\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
