.class Lcom/android/settings/AutoPreInstallFtpListApkService$12;
.super Ljava/lang/Object;
.source "AutoPreInstallFtpListApkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AutoPreInstallFtpListApkService;->downloadInfoFromFwqAboutPadSettings(Lcom/android/settings/AutoPreInstallFtpListApkService$DownloadInfoFromFwqInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadInterface:Lcom/android/settings/AutoPreInstallFtpListApkService$DownloadInfoFromFwqInterface;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoPreInstallFtpListApkService$DownloadInfoFromFwqInterface;)V
    .locals 0

    .line 3348
    iput-object p1, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$12;->val$downloadInterface:Lcom/android/settings/AutoPreInstallFtpListApkService$DownloadInfoFromFwqInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 3352
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3354
    const-string v0, "http://192.168.16.247/V3/index.php?s=/ApiTool/ApiDeviceType/getModelLauncherConfig.html"

    .line 3355
    .local v0, "newsPath_url":Ljava/lang/String;
    const-string v1, "&authKey=%s&model=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/AutoPreInstallFtpListApkService;->getAuthKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "Readboy_"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3357
    .local v1, "param":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3358
    .local v2, "url":Ljava/net/URL;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==1===divhee========download_InfoFromFwqAboutPadSettings====="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 3361
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 3362
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 3364
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 3365
    .local v4, "code":I
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 3367
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 3368
    .local v5, "inputStream":Ljava/io/InputStream;
    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->streamToStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3369
    .local v6, "result":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/AutoPreInstallFtpListApkService;->unicodeToCn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 3370
    const-string v7, "&quot;"

    const-string v8, "\""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 3371
    const-string v7, "\"["

    const-string v8, "["

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 3372
    const-string v7, "]\""

    const-string v8, "]"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 3373
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=4====divhee========download_InfoFromFwqAboutPadSettings====="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3375
    .local v7, "jsonObject0":Lorg/json/JSONObject;
    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "errcode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "errcode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v8, :cond_0

    .line 3376
    const/4 v8, 0x0

    .line 3377
    .local v8, "jsonArray1":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .line 3379
    .local v9, "jsonObject1":Lorg/json/JSONObject;
    :try_start_1
    const-string v10, "data"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v10

    .line 3387
    goto :goto_0

    .line 3380
    :catch_0
    move-exception v10

    .line 3382
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    move-object v8, v11

    .line 3383
    const-string v11, "data"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    move-object v9, v11

    .line 3384
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3386
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3385
    :catch_1
    move-exception v11

    .line 3388
    .end local v10
    :goto_0
    if-eqz v8, :cond_0

    .line 3389
    :try_start_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 3390
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "download_info_from_fwq_about_pad_settings"

    invoke-static {v10, v11, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3391
    iget-object v10, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$12;->val$downloadInterface:Lcom/android/settings/AutoPreInstallFtpListApkService$DownloadInfoFromFwqInterface;

    if-eqz v10, :cond_0

    .line 3392
    iget-object v10, p0, Lcom/android/settings/AutoPreInstallFtpListApkService$12;->val$downloadInterface:Lcom/android/settings/AutoPreInstallFtpListApkService$DownloadInfoFromFwqInterface;

    invoke-interface {v10}, Lcom/android/settings/AutoPreInstallFtpListApkService$DownloadInfoFromFwqInterface;->downloadInfoFromFwqResetSettings()V

    .line 3396
    .end local v8
    .end local v9
    :cond_0
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=======divhee========download_InfoFromFwqAboutPadSettings===result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    .end local v5
    .end local v6
    .end local v7
    goto :goto_1

    .line 3398
    :cond_1
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "=======divhee========download_InfoFromFwqAboutPadSettings==fail=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    goto :goto_2

    .line 3401
    :catch_2
    move-exception v0

    .line 3402
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3404
    .end local v0
    :goto_2
    return-void
.end method
