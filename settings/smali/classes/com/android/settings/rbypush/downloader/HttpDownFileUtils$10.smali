.class Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;
.super Ljava/lang/Object;
.source "HttpDownFileUtils.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->downMusicVideoPicFromService(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V
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

.field final synthetic val$inserType:Ljava/lang/String;

.field final synthetic val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;


# direct methods
.method constructor <init>(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    .line 576
    iput-object p1, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    iput-object p2, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$downPathUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$inserType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;

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

    .line 579
    const/4 v0, 0x0

    move-object v2, v0

    .line 581
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$downPathUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 583
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 584
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 585
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 586
    .local v5, "time":J
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 587
    .local v7, "code":I
    iget-object v8, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$downPathUrl:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$downPathUrl:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 588
    .local v8, "prefix":Ljava/lang/String;
    const/4 v9, 0x0

    .line 589
    .local v9, "fileName":Ljava/lang/String;
    const/16 v11, 0xc8

    if-ne v7, v11, :cond_2

    .line 590
    const-string v11, "Content-Disposition"

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 592
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v10, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    const-string v11, "filename="

    .line 599
    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x9

    .line 598
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 601
    const-string v11, "\""

    const-string v12, ""

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    goto :goto_1

    .line 594
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v11

    .line 595
    .local v11, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 596
    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v10

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 597
    .end local v11
    nop

    .line 605
    :cond_2
    :goto_1
    iget-object v11, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    invoke-virtual {v11, v9}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 606
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 608
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 609
    .local v11, "nowDateTaken":J
    iget-object v13, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    invoke-virtual {v13, v9}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v14, -0x1

    if-nez v13, :cond_5

    .line 610
    const-string v13, "utf-8\'\'"

    .line 611
    .local v13, "keySplit":Ljava/lang/String;
    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 612
    .local v15, "iFindout":I
    if-eq v15, v14, :cond_4

    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 613
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    add-int v10, v15, v16

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v9, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 615
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "_"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 618
    .end local v13
    .end local v15
    :cond_5
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 619
    .local v10, "contentValues":Landroid/content/ContentValues;
    iget-object v13, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$inserType:Ljava/lang/String;

    sget-object v14, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 620
    const-string v13, "_display_name"

    invoke-virtual {v10, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v13, "mime_type"

    iget-object v14, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    invoke-virtual {v14, v9}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v13, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 625
    iget-object v13, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    move-object v2, v13

    goto :goto_2

    .line 626
    :cond_6
    iget-object v13, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$inserType:Ljava/lang/String;

    sget-object v14, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 627
    const-string v13, "mime_type"

    iget-object v14, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    invoke-virtual {v14, v9}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v13, "_display_name"

    invoke-virtual {v10, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v13, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 632
    iget-object v13, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    move-object v2, v13

    goto :goto_2

    .line 633
    :cond_7
    iget-object v13, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$inserType:Ljava/lang/String;

    sget-object v14, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 634
    const-string v13, "mime_type"

    iget-object v14, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    invoke-virtual {v14, v9}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v13, "_display_name"

    invoke-virtual {v10, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v13, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    move-object v2, v13

    .line 643
    :cond_8
    :goto_2
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 644
    .local v13, "inputStream":Ljava/io/BufferedInputStream;
    iget-object v14, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v14

    .line 645
    .local v14, "os":Ljava/io/OutputStream;
    if-eqz v14, :cond_b

    .line 646
    const/16 v15, 0x400

    new-array v15, v15, [B

    .line 648
    .local v15, "buffer":[B
    const-wide/16 v17, 0x0

    .line 649
    .local v17, "total":J
    move-object/from16 v19, v0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .end local v0
    .local v19, "url":Ljava/net/URL;
    move-wide/from16 v20, v5

    int-to-long v5, v0

    .line 650
    .local v5, "contentLeng":J
    .local v20, "time":J
    :goto_3
    invoke-virtual {v13, v15}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    move/from16 v30, v0

    .local v30, "len":I
    move-object/from16 v31, v3

    const/4 v3, -0x1

    if-eq v0, v3, :cond_a

    .line 651
    .end local v3
    .local v31, "conn":Ljava/net/HttpURLConnection;
    move/from16 v0, v30

    const/4 v3, 0x0

    invoke-virtual {v14, v15, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 652
    .end local v30
    .local v0, "len":I
    move/from16 v32, v7

    move-object/from16 v33, v8

    int-to-long v7, v0

    .end local v7
    .end local v8
    .local v32, "code":I
    .local v33, "prefix":Ljava/lang/String;
    add-long v7, v17, v7

    .line 653
    .end local v17
    .local v7, "total":J
    iget-object v3, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    if-eqz v3, :cond_9

    .line 654
    iget-object v3, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v17, 0x64

    mul-long v17, v17, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    div-long v9, v17, v5

    .end local v9
    .end local v10
    .local v34, "fileName":Ljava/lang/String;
    .local v35, "contentValues":Landroid/content/ContentValues;
    long-to-int v9, v9

    move-object/from16 v22, v3

    move/from16 v25, v9

    move-wide/from16 v26, v7

    move-wide/from16 v28, v5

    invoke-interface/range {v22 .. v29}, Lcom/android/settings/rbypush/downloader/OnFileDownListener;->onFileDownStatus(ILjava/lang/Object;IJJ)V

    goto :goto_4

    .line 649
    .end local v0
    .end local v34
    .end local v35
    .restart local v9
    .restart local v10
    :cond_9
    move-object/from16 v34, v9

    move-object/from16 v35, v10

    .end local v9
    .end local v10
    .restart local v34
    .restart local v35
    :goto_4
    move-wide/from16 v17, v7

    move-object/from16 v3, v31

    move/from16 v7, v32

    move-object/from16 v8, v33

    move-object/from16 v9, v34

    move-object/from16 v10, v35

    goto :goto_3

    .line 660
    .end local v5
    .end local v15
    .end local v32
    .end local v33
    .end local v34
    .end local v35
    .local v7, "code":I
    .restart local v8
    .restart local v9
    .restart local v10
    :cond_a
    move/from16 v32, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .restart local v32
    .restart local v33
    .restart local v34
    .restart local v35
    goto :goto_5

    .end local v19
    .end local v20
    .end local v31
    .end local v32
    .end local v33
    .end local v34
    .end local v35
    .local v0, "url":Ljava/net/URL;
    .restart local v3
    .local v5, "time":J
    .restart local v7
    .restart local v8
    .restart local v9
    .restart local v10
    :cond_b
    move-object/from16 v19, v0

    move-object/from16 v31, v3

    move-wide/from16 v20, v5

    move/from16 v32, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    .end local v0
    .end local v3
    .end local v5
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .restart local v19
    .restart local v20
    .restart local v31
    .restart local v32
    .restart local v33
    .restart local v34
    .restart local v35
    :goto_5
    iget-object v0, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$inserType:Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 662
    invoke-static {}, Lcom/android/settings/rbypush/downloader/FileSDCardUtil;->getInstance()Lcom/android/settings/rbypush/downloader/FileSDCardUtil;

    move-result-object v0

    iget-object v3, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/rbypush/downloader/FileSDCardUtil;->getPathFromContentUri(Landroid/net/Uri;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "filePathArray":[Ljava/lang/String;
    iget-object v3, v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->val$context:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, v0, v6

    aput-object v7, v5, v6

    const-string v6, "image/jpeg"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10$1;

    invoke-direct {v7, v1}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10$1;-><init>(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;)V

    invoke-static {v3, v5, v6, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 670
    .end local v0
    :cond_c
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 671
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    .line 672
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 673
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .end local v4
    .end local v11
    .end local v13
    .end local v14
    .end local v19
    .end local v20
    .end local v31
    .end local v32
    .end local v33
    .end local v34
    .end local v35
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0
    goto :goto_7

    .line 678
    :catch_1
    move-exception v0

    .line 679
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v0
    goto :goto_6

    .line 676
    :catch_2
    move-exception v0

    .line 677
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .end local v0
    goto :goto_6

    .line 674
    :catch_3
    move-exception v0

    .line 675
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 682
    .end local v0
    :goto_6
    nop

    .line 683
    :goto_7
    return-object v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 576
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->apply(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
