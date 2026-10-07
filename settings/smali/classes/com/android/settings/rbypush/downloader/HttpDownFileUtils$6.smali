.class Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;
.super Ljava/lang/Object;
.source "HttpDownFileUtils.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->downUnKnowFileFromService(Ljava/lang/String;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V
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
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

.field final synthetic val$downPathUrl:Ljava/lang/String;

.field final synthetic val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;


# direct methods
.method constructor <init>(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;Ljava/lang/String;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    .line 350
    iput-object p1, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    iput-object p2, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;->val$downPathUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;->val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Ljava/io/File;
    .locals 35
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/net/URL;

    iget-object v3, v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;->val$downPathUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 355
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 356
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 357
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 358
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 359
    .local v5, "time":J
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 360
    .local v7, "code":I
    iget-object v8, v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;->val$downPathUrl:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;->val$downPathUrl:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 361
    .local v8, "prefix":Ljava/lang/String;
    const/4 v9, 0x0

    .line 362
    .local v9, "fileName":Ljava/lang/String;
    const/16 v11, 0xc8

    if-ne v7, v11, :cond_2

    .line 363
    const-string v11, "Content-Disposition"

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 365
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v10, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    const-string v10, "filename="

    .line 372
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x9

    .line 371
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 374
    const-string v10, "\""

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 367
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v11

    .line 368
    .local v11, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v9

    .line 369
    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v10

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 370
    .end local v11
    nop

    .line 378
    :cond_2
    :goto_1
    iget-object v10, v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    invoke-virtual {v10, v9}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 379
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 381
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 382
    .local v10, "nowDateTaken":J
    iget-object v12, v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    invoke-virtual {v12, v9}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v13, -0x1

    if-nez v12, :cond_5

    .line 383
    const-string v12, "utf-8\'\'"

    .line 384
    .local v12, "keySplit":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 385
    .local v14, "iFindout":I
    if-eq v14, v13, :cond_4

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 386
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 388
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 391
    .end local v12
    .end local v14
    :cond_5
    new-instance v12, Ljava/io/File;

    invoke-static {}, Lcom/android/settings/rbypush/downloader/FileSDCardUtil;->getInstance()Lcom/android/settings/rbypush/downloader/FileSDCardUtil;

    move-result-object v13

    sget-object v14, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/android/settings/rbypush/downloader/FileSDCardUtil;->getPublickDiskFileDirAndroid9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v12

    .line 392
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_6

    .line 393
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 396
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_7

    .line 397
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 399
    :cond_7
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 400
    .local v12, "fos":Ljava/io/FileOutputStream;
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 401
    .local v13, "bis":Ljava/io/BufferedInputStream;
    const/16 v14, 0x400

    new-array v14, v14, [B

    .line 403
    .local v14, "buffer":[B
    const-wide/16 v17, 0x0

    .line 404
    .local v17, "total":J
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v15

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    int-to-long v2, v15

    .line 405
    .end local v3
    .local v2, "contentLeng":J
    .local v19, "url":Ljava/net/URL;
    .local v20, "conn":Ljava/net/HttpURLConnection;
    :goto_2
    invoke-virtual {v13, v14}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v15

    move/from16 v29, v15

    .local v29, "len":I
    move-object/from16 v30, v4

    const/4 v4, -0x1

    if-eq v15, v4, :cond_9

    .line 406
    .end local v4
    .local v30, "is":Ljava/io/InputStream;
    const/4 v15, 0x0

    move/from16 v4, v29

    invoke-virtual {v12, v14, v15, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 407
    .end local v29
    .local v4, "len":I
    move-wide/from16 v31, v5

    int-to-long v5, v4

    .end local v5
    .local v31, "time":J
    add-long v5, v17, v5

    .line 408
    .end local v17
    .local v5, "total":J
    iget-object v15, v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;->val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    if-eqz v15, :cond_8

    .line 409
    iget-object v15, v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;->val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v16, 0x64

    mul-long v16, v16, v5

    move/from16 v33, v7

    move-object/from16 v34, v8

    div-long v7, v16, v2

    .end local v7
    .end local v8
    .local v33, "code":I
    .local v34, "prefix":Ljava/lang/String;
    long-to-int v7, v7

    move-object/from16 v21, v15

    move/from16 v24, v7

    move-wide/from16 v25, v5

    move-wide/from16 v27, v2

    invoke-interface/range {v21 .. v28}, Lcom/android/settings/rbypush/downloader/OnFileDownListener;->onFileDownStatus(ILjava/lang/Object;IJJ)V

    goto :goto_3

    .line 404
    .end local v4
    .end local v33
    .end local v34
    .restart local v7
    .restart local v8
    :cond_8
    move/from16 v33, v7

    move-object/from16 v34, v8

    .end local v7
    .end local v8
    .restart local v33
    .restart local v34
    :goto_3
    move-wide/from16 v17, v5

    move-object/from16 v4, v30

    move-wide/from16 v5, v31

    move/from16 v7, v33

    move-object/from16 v8, v34

    goto :goto_2

    .line 412
    .end local v31
    .end local v33
    .end local v34
    .local v5, "time":J
    .restart local v7
    .restart local v8
    .restart local v17
    .restart local v29
    :cond_9
    move-wide/from16 v31, v5

    move/from16 v33, v7

    move-object/from16 v34, v8

    move/from16 v4, v29

    .end local v5
    .end local v7
    .end local v8
    .end local v29
    .restart local v4
    .restart local v31
    .restart local v33
    .restart local v34
    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 350
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;->apply(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
