.class Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;
.super Ljava/lang/Object;
.source "HttpDownFileUtils.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->downUnKnowFileFromService(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/String;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$downPathUrl:Ljava/lang/String;

.field final synthetic val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;


# direct methods
.method constructor <init>(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;Ljava/lang/String;Landroid/content/Context;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    .line 451
    iput-object p1, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    iput-object p2, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->val$downPathUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Landroid/net/Uri;
    .locals 36
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 455
    const/4 v0, 0x0

    move-object v2, v0

    .line 457
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->val$downPathUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 459
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 460
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 461
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 462
    .local v5, "time":J
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 463
    .local v7, "code":I
    iget-object v8, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->val$downPathUrl:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->val$downPathUrl:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 464
    .local v8, "prefix":Ljava/lang/String;
    const/4 v9, 0x0

    .line 465
    .local v9, "fileName":Ljava/lang/String;
    const/16 v11, 0xc8

    if-ne v7, v11, :cond_2

    .line 466
    const-string v11, "Content-Disposition"

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 468
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v10, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    const-string v10, "filename="

    .line 475
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x9

    .line 474
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 477
    const-string v10, "\""

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    goto :goto_1

    .line 470
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v11

    .line 471
    .local v11, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 472
    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v10

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 473
    .end local v11
    nop

    .line 481
    :cond_2
    :goto_1
    iget-object v10, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    invoke-virtual {v10, v9}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 482
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 484
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 485
    .local v10, "nowDateTaken":J
    iget-object v12, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    invoke-virtual {v12, v9}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v13, -0x1

    if-nez v12, :cond_5

    .line 486
    const-string v12, "utf-8\'\'"

    .line 487
    .local v12, "keySplit":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 488
    .local v14, "iFindout":I
    if-eq v14, v13, :cond_4

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 489
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 491
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 499
    .end local v12
    .end local v14
    :cond_5
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 500
    .local v12, "contentValues":Landroid/content/ContentValues;
    const-string v13, "_display_name"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v13, "mime_type"

    iget-object v14, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    invoke-virtual {v14, v9}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v13, "datetaken"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 504
    iget-object v13, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->val$context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "Download"

    invoke-static {v14}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    move-object v2, v13

    .line 506
    :try_start_1
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 507
    .local v13, "inputStream":Ljava/io/BufferedInputStream;
    iget-object v14, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->val$context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v14

    .line 508
    .local v14, "os":Ljava/io/OutputStream;
    if-eqz v14, :cond_8

    .line 509
    const/16 v15, 0x400

    new-array v15, v15, [B

    .line 511
    .local v15, "buffer":[B
    const-wide/16 v17, 0x0

    .line 512
    .local v17, "total":J
    move-object/from16 v19, v0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .end local v0
    .local v19, "url":Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v21, v2

    move-object/from16 v20, v3

    int-to-long v2, v0

    .line 513
    .end local v3
    .local v2, "contentLeng":J
    .local v20, "conn":Ljava/net/HttpURLConnection;
    .local v21, "uri":Landroid/net/Uri;
    :goto_2
    :try_start_2
    invoke-virtual {v13, v15}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    move/from16 v30, v0

    .local v30, "len":I
    move-wide/from16 v31, v5

    const/4 v5, -0x1

    if-eq v0, v5, :cond_7

    .line 514
    .end local v5
    .local v31, "time":J
    const/4 v0, 0x0

    move/from16 v6, v30

    invoke-virtual {v14, v15, v0, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 515
    .end local v30
    .local v6, "len":I
    move/from16 v33, v7

    move-object/from16 v34, v8

    int-to-long v7, v6

    .end local v7
    .end local v8
    .local v33, "code":I
    .local v34, "prefix":Ljava/lang/String;
    add-long v7, v17, v7

    .line 516
    .end local v17
    .local v7, "total":J
    iget-object v0, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    if-eqz v0, :cond_6

    .line 517
    iget-object v0, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v16, 0x64

    mul-long v16, v16, v7

    move/from16 v35, v6

    div-long v5, v16, v2

    .end local v6
    .local v35, "len":I
    long-to-int v5, v5

    move-object/from16 v22, v0

    move/from16 v25, v5

    move-wide/from16 v26, v7

    move-wide/from16 v28, v2

    invoke-interface/range {v22 .. v29}, Lcom/android/settings/rbypush/downloader/OnFileDownListener;->onFileDownStatus(ILjava/lang/Object;IJJ)V

    .line 512
    .end local v35
    :cond_6
    move-wide/from16 v17, v7

    move-wide/from16 v5, v31

    move/from16 v7, v33

    move-object/from16 v8, v34

    goto :goto_2

    .line 521
    .end local v2
    .end local v15
    .end local v33
    .end local v34
    .local v7, "code":I
    .restart local v8
    :cond_7
    move/from16 v33, v7

    move-object/from16 v34, v8

    .end local v7
    .end local v8
    .restart local v33
    .restart local v34
    goto :goto_3

    .end local v19
    .end local v20
    .end local v21
    .end local v31
    .end local v33
    .end local v34
    .restart local v0
    .local v2, "uri":Landroid/net/Uri;
    .restart local v3
    .restart local v5
    .restart local v7
    .restart local v8
    :cond_8
    move-object/from16 v19, v0

    move-object/from16 v21, v2

    move-object/from16 v20, v3

    move-wide/from16 v31, v5

    move/from16 v33, v7

    move-object/from16 v34, v8

    .end local v0
    .end local v2
    .end local v3
    .end local v5
    .end local v7
    .end local v8
    .restart local v19
    .restart local v20
    .restart local v21
    .restart local v31
    .restart local v33
    .restart local v34
    :goto_3
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 522
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    .line 523
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 524
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 533
    .end local v4
    .end local v9
    .end local v10
    .end local v12
    .end local v13
    .end local v14
    .end local v19
    .end local v20
    .end local v31
    .end local v33
    .end local v34
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    .line 534
    move-object/from16 v2, v21

    goto :goto_9

    .line 531
    :catch_0
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_4

    .line 529
    :catch_1
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_5

    .line 527
    :catch_2
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_6

    .line 525
    :catch_3
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_7

    .line 531
    .end local v21
    .restart local v2
    :catch_4
    move-exception v0

    move-object/from16 v21, v2

    .end local v2
    .restart local v21
    goto :goto_4

    .line 529
    .end local v21
    .restart local v2
    :catch_5
    move-exception v0

    move-object/from16 v21, v2

    .end local v2
    .restart local v21
    goto :goto_5

    .line 527
    .end local v21
    .restart local v2
    :catch_6
    move-exception v0

    move-object/from16 v21, v2

    .end local v2
    .restart local v21
    goto :goto_6

    .line 525
    .end local v21
    .restart local v2
    :catch_7
    move-exception v0

    move-object/from16 v21, v2

    .end local v2
    .restart local v21
    goto :goto_7

    .line 531
    .end local v21
    .restart local v2
    :catch_8
    move-exception v0

    .line 532
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0
    goto :goto_9

    .line 529
    :catch_9
    move-exception v0

    .line 530
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v0
    goto :goto_8

    .line 527
    :catch_a
    move-exception v0

    .line 528
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_6
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .end local v0
    goto :goto_8

    .line 525
    :catch_b
    move-exception v0

    .line 526
    .local v0, "e":Ljava/net/MalformedURLException;
    :goto_7
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 533
    .end local v0
    :goto_8
    nop

    .line 534
    :goto_9
    return-object v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 451
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;->apply(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
