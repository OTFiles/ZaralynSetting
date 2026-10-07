.class public Lcom/readboy/store/download/DownloadRunnable;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;,
        Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;
    }
.end annotation


# static fields
.field private static final CHECK_CACHE:I = 0x2

.field private static final PER_FILE_CACHE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "DownloadRunnable"

.field private static final TEMP_SUFFIX:Ljava/lang/String; = ".temp"


# instance fields
.field private RETRY_MAX:I

.field private bean:Lcom/readboy/store/download/DownloadBean;

.field private breakPoint:I

.field private cancel:Z

.field private downloadPercent:I

.field private listener:Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

.field private mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

.field private tempFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/readboy/store/download/DownloadBean;)V
    .locals 2
    .param p1, "bean"    # Lcom/readboy/store/download/DownloadBean;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/readboy/store/download/DownloadRunnable;->cancel:Z

    .line 38
    iput v0, p0, Lcom/readboy/store/download/DownloadRunnable;->downloadPercent:I

    .line 39
    const/4 v1, 0x2

    iput v1, p0, Lcom/readboy/store/download/DownloadRunnable;->RETRY_MAX:I

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/readboy/store/download/DownloadRunnable;->tempFile:Ljava/io/File;

    .line 48
    iput v0, p0, Lcom/readboy/store/download/DownloadRunnable;->breakPoint:I

    .line 51
    iput-object p1, p0, Lcom/readboy/store/download/DownloadRunnable;->bean:Lcom/readboy/store/download/DownloadBean;

    .line 52
    new-instance v0, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;-><init>(Lcom/readboy/store/download/DownloadRunnable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    .line 53
    invoke-virtual {p1}, Lcom/readboy/store/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNullValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/readboy/store/download/DownloadRunnable;)I
    .locals 1
    .param p0, "x0"    # Lcom/readboy/store/download/DownloadRunnable;

    .line 30
    iget v0, p0, Lcom/readboy/store/download/DownloadRunnable;->downloadPercent:I

    return v0
.end method

.method static synthetic access$002(Lcom/readboy/store/download/DownloadRunnable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/readboy/store/download/DownloadRunnable;
    .param p1, "x1"    # I

    .line 30
    iput p1, p0, Lcom/readboy/store/download/DownloadRunnable;->downloadPercent:I

    return p1
.end method

.method static synthetic access$100(Lcom/readboy/store/download/DownloadRunnable;)Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;
    .locals 1
    .param p0, "x0"    # Lcom/readboy/store/download/DownloadRunnable;

    .line 30
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->listener:Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    return-object v0
.end method

.method private checkMd5()Z
    .locals 3

    .line 114
    const/4 v0, 0x1

    .line 115
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/readboy/store/download/DownloadRunnable;->tempFile:Ljava/io/File;

    invoke-static {v1}, Lcom/readboy/store/AppUpdate/Utils;->MD5Hex(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "md5":Ljava/lang/String;
    iget-object v2, p0, Lcom/readboy/store/download/DownloadRunnable;->bean:Lcom/readboy/store/download/DownloadBean;

    invoke-virtual {v2}, Lcom/readboy/store/download/DownloadBean;->getMd5()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/readboy/store/download/DownloadRunnable;->bean:Lcom/readboy/store/download/DownloadBean;

    invoke-virtual {v2}, Lcom/readboy/store/download/DownloadBean;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :cond_0
    return v0
.end method

.method private createFile(Lcom/readboy/store/download/DownloadBean;)Ljava/io/File;
    .locals 9
    .param p1, "bean"    # Lcom/readboy/store/download/DownloadBean;

    .line 241
    invoke-virtual {p1}, Lcom/readboy/store/download/DownloadBean;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/readboy/store/download/DownloadBean;->isDeleteLast()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 243
    .local v1, "deleteLast":Z
    :goto_0
    invoke-virtual {p1}, Lcom/readboy/store/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v3, "rootFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 247
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 248
    const-string v4, "DownloadRunnable"

    const-string v5, "create dir fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_1
    invoke-virtual {p1}, Lcom/readboy/store/download/DownloadBean;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/readboy/store/AppUpdate/Utils;->getFileNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "name":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 255
    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 260
    :cond_2
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".temp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 261
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 262
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 263
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lcom/readboy/store/download/DownloadRunnable;->breakPoint:I

    .line 264
    return-object v5

    .line 266
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 271
    :cond_4
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 275
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 272
    :catch_0
    move-exception v6

    .line 273
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 274
    const/4 v5, 0x0

    .line 276
    .end local v6
    :goto_1
    return-object v5
.end method

.method private download()Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 126
    .local v2, "ret":Z
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object v3, v0

    .line 128
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, v1, Lcom/readboy/store/download/DownloadRunnable;->bean:Lcom/readboy/store/download/DownloadBean;

    invoke-virtual {v4}, Lcom/readboy/store/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 130
    .local v4, "get":Lorg/apache/http/client/methods/HttpGet;
    iget-object v0, v1, Lcom/readboy/store/download/DownloadRunnable;->bean:Lcom/readboy/store/download/DownloadBean;

    invoke-direct {v1, v0}, Lcom/readboy/store/download/DownloadRunnable;->createFile(Lcom/readboy/store/download/DownloadBean;)Ljava/io/File;

    move-result-object v0

    iput-object v0, v1, Lcom/readboy/store/download/DownloadRunnable;->tempFile:Ljava/io/File;

    .line 131
    iget-object v0, v1, Lcom/readboy/store/download/DownloadRunnable;->tempFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 132
    const/high16 v0, 0x10000

    invoke-direct {v1, v0}, Lcom/readboy/store/download/DownloadRunnable;->exception(I)V

    .line 133
    return v2

    .line 135
    :cond_0
    const/4 v5, 0x0

    .line 139
    .local v5, "bis":Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v6, v1, Lcom/readboy/store/download/DownloadRunnable;->tempFile:Ljava/io/File;

    const-string v7, "rws"

    invoke-direct {v0, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 140
    .local v6, "randomFile":Ljava/nio/channels/FileChannel;
    iget v0, v1, Lcom/readboy/store/download/DownloadRunnable;->breakPoint:I

    const/4 v7, 0x2

    if-le v0, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 141
    .local v7, "fileCheckLen":I
    :goto_0
    iget v0, v1, Lcom/readboy/store/download/DownloadRunnable;->breakPoint:I

    sub-int/2addr v0, v7

    iput v0, v1, Lcom/readboy/store/download/DownloadRunnable;->breakPoint:I

    .line 143
    const-string v0, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/readboy/store/download/DownloadRunnable;->breakPoint:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v0, v9}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 146
    .local v9, "response":Lorg/apache/http/HttpResponse;
    const-string v0, "DownloadRunnable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recheck needUpdate"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v10, 0xc8

    const/16 v11, 0xce

    if-eq v0, v10, :cond_4

    .line 148
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    if-ne v0, v11, :cond_2

    goto :goto_1

    .line 216
    :cond_2
    const-string v0, "DownloadRunnable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error return code"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget v0, v1, Lcom/readboy/store/download/DownloadRunnable;->RETRY_MAX:I

    add-int/lit8 v8, v0, -0x1

    iput v8, v1, Lcom/readboy/store/download/DownloadRunnable;->RETRY_MAX:I

    if-lez v0, :cond_3

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/readboy/store/download/DownloadRunnable;->download()Z

    .line 221
    :cond_3
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v7

    move-object/from16 v21, v9

    goto/16 :goto_8

    .line 150
    :cond_4
    :goto_1
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 152
    .local v10, "entity":Lorg/apache/http/HttpEntity;
    nop

    .line 153
    nop

    .line 152
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    if-ne v0, v11, :cond_5

    .line 153
    iget v0, v1, Lcom/readboy/store/download/DownloadRunnable;->breakPoint:I

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iput v0, v1, Lcom/readboy/store/download/DownloadRunnable;->breakPoint:I

    .line 154
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    iget v0, v1, Lcom/readboy/store/download/DownloadRunnable;->breakPoint:I

    int-to-long v13, v0

    add-long/2addr v11, v13

    .line 155
    .local v11, "fileLen":J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->getAvailaleSize(Ljava/io/File;)J

    move-result-wide v13

    cmp-long v0, v13, v11

    if-gez v0, :cond_6

    .line 156
    const v0, 0xfff8

    invoke-direct {v1, v0}, Lcom/readboy/store/download/DownloadRunnable;->exception(I)V

    .line 157
    return v2

    .line 159
    :cond_6
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 160
    .local v13, "is":Ljava/io/InputStream;
    invoke-static {v13}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 163
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object v5, v0

    .line 165
    :try_start_1
    iget v0, v1, Lcom/readboy/store/download/DownloadRunnable;->breakPoint:I

    int-to-long v14, v0

    .line 166
    .local v14, "count":J
    const/4 v0, 0x0

    .line 167
    .local v0, "percent":I
    const/16 v16, 0x0

    .line 168
    .local v16, "lastPercent":I
    const/16 v8, 0x1000

    new-array v8, v8, [B

    .line 170
    .local v8, "buffer":[B
    move/from16 v17, v0

    iget v0, v1, Lcom/readboy/store/download/DownloadRunnable;->breakPoint:I

    .end local v0
    .local v17, "percent":I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-lez v0, :cond_7

    :try_start_2
    iget v0, v1, Lcom/readboy/store/download/DownloadRunnable;->breakPoint:I

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    int-to-long v3, v0

    .end local v3
    .end local v4
    .local v18, "client":Lorg/apache/http/client/HttpClient;
    .local v19, "get":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_3

    .line 207
    .end local v8
    .end local v14
    .end local v16
    .end local v17
    .end local v18
    .end local v19
    .restart local v3
    .restart local v4
    :catchall_0
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v7

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .end local v3
    .end local v4
    .restart local v18
    .restart local v19
    goto/16 :goto_7

    .line 170
    .end local v18
    .end local v19
    .restart local v3
    .restart local v4
    .restart local v8
    .restart local v14
    .restart local v16
    .restart local v17
    :cond_7
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3
    .end local v4
    .restart local v18
    .restart local v19
    const-wide/16 v3, 0x0

    :goto_3
    :try_start_3
    invoke-virtual {v6, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 172
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-lez v7, :cond_b

    .line 174
    :try_start_4
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 175
    .local v0, "check":Ljava/nio/ByteBuffer;
    new-array v4, v7, [B

    .line 176
    .local v4, "curr":[B
    invoke-virtual {v6, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 177
    invoke-virtual {v5, v4}, Ljava/io/BufferedInputStream;->read([B)I

    .line 178
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v20, v7

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    .end local v7
    .local v20, "fileCheckLen":I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v21, v9

    :try_start_6
    aget-byte v9, v4, v3

    .end local v9
    .local v21, "response":Lorg/apache/http/HttpResponse;
    if-ne v7, v9, :cond_8

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    aget-byte v9, v4, v3

    if-eq v7, v9, :cond_c

    .line 180
    :cond_8
    iget-object v3, v1, Lcom/readboy/store/download/DownloadRunnable;->tempFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/readboy/store/download/DownloadRunnable;->download()Z

    .line 182
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    nop

    .line 207
    if-eqz v6, :cond_9

    .line 208
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 210
    :cond_9
    if-eqz v13, :cond_a

    .line 211
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 182
    :cond_a
    return v2

    .line 207
    .end local v0
    .end local v4
    .end local v8
    .end local v14
    .end local v16
    .end local v17
    :catchall_1
    move-exception v0

    move-object/from16 v22, v10

    goto/16 :goto_7

    .end local v21
    .restart local v9
    :catchall_2
    move-exception v0

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .end local v9
    .restart local v21
    goto/16 :goto_7

    .end local v20
    .end local v21
    .restart local v7
    .restart local v9
    :catchall_3
    move-exception v0

    move/from16 v20, v7

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .end local v7
    .end local v9
    .restart local v20
    .restart local v21
    goto/16 :goto_7

    .line 186
    .end local v20
    .end local v21
    .restart local v7
    .restart local v8
    .restart local v9
    .restart local v14
    .restart local v16
    .restart local v17
    :cond_b
    move/from16 v20, v7

    move-object/from16 v21, v9

    .end local v7
    .end local v9
    .restart local v20
    .restart local v21
    :cond_c
    long-to-double v3, v14

    move-object/from16 v22, v10

    long-to-double v9, v11

    .end local v10
    .local v22, "entity":Lorg/apache/http/HttpEntity;
    div-double/2addr v3, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v9

    double-to-int v0, v3

    .line 188
    .end local v17
    .local v0, "percent":I
    move v3, v0

    .line 189
    .end local v16
    .local v3, "lastPercent":I
    :try_start_7
    invoke-direct {v1, v0}, Lcom/readboy/store/download/DownloadRunnable;->sendDowning(I)V

    .line 191
    :goto_4
    invoke-virtual {v5, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    move v7, v4

    .local v7, "read":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_e

    iget-boolean v4, v1, Lcom/readboy/store/download/DownloadRunnable;->cancel:Z

    if-nez v4, :cond_e

    .line 192
    const/4 v4, 0x0

    invoke-static {v8, v4, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 193
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    int-to-long v9, v7

    add-long/2addr v14, v9

    .line 194
    long-to-double v9, v14

    move-object/from16 v23, v5

    long-to-double v4, v11

    .end local v5
    .local v23, "bis":Ljava/io/BufferedInputStream;
    div-double/2addr v9, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v9, v4

    double-to-int v9, v9

    .line 195
    .end local v0
    .local v9, "percent":I
    sub-int v0, v9, v3

    const/4 v10, 0x1

    if-lt v0, v10, :cond_d

    .line 196
    move v3, v9

    .line 197
    :try_start_8
    invoke-direct {v1, v9}, Lcom/readboy/store/download/DownloadRunnable;->sendDowning(I)V

    .line 199
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const-wide/16 v4, 0x14

    :try_start_9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 202
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_5
    goto :goto_6

    .line 200
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 201
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_5

    .line 191
    .end local v7
    :goto_6
    move v0, v9

    move-object/from16 v5, v23

    const-wide/high16 v9, 0x4059000000000000L

    goto :goto_4

    .line 207
    .end local v3
    .end local v8
    .end local v9
    .end local v14
    :catchall_4
    move-exception v0

    move-object/from16 v5, v23

    goto :goto_7

    .line 191
    .restart local v3
    .restart local v8
    .restart local v9
    .restart local v14
    :cond_d
    move v0, v9

    move-wide v9, v4

    move-object/from16 v5, v23

    goto :goto_4

    .line 205
    .end local v9
    .end local v23
    .local v0, "percent":I
    .restart local v5
    .restart local v7
    :cond_e
    move-object/from16 v23, v5

    .end local v5
    .restart local v23
    const/4 v0, 0x1

    .line 207
    .end local v2
    .end local v3
    .end local v7
    .end local v8
    .end local v14
    .local v0, "ret":Z
    if-eqz v6, :cond_f

    .line 208
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 210
    :cond_f
    if-eqz v13, :cond_10

    .line 211
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 215
    .end local v11
    .end local v13
    .end local v22
    :cond_10
    move v2, v0

    move-object/from16 v5, v23

    goto :goto_8

    .line 207
    .end local v0
    .end local v23
    .restart local v2
    .restart local v5
    .restart local v11
    .restart local v13
    .restart local v22
    :catchall_5
    move-exception v0

    move-object/from16 v23, v5

    .end local v5
    .restart local v23
    goto :goto_7

    .end local v20
    .end local v21
    .end local v22
    .end local v23
    .restart local v5
    .local v7, "fileCheckLen":I
    .local v9, "response":Lorg/apache/http/HttpResponse;
    .restart local v10
    :catchall_6
    move-exception v0

    move-object/from16 v23, v5

    move/from16 v20, v7

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .end local v5
    .end local v7
    .end local v9
    .end local v10
    .restart local v20
    .restart local v21
    .restart local v22
    .restart local v23
    goto :goto_7

    .end local v18
    .end local v19
    .end local v20
    .end local v21
    .end local v22
    .end local v23
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    .local v4, "get":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5
    .restart local v7
    .restart local v9
    .restart local v10
    :catchall_7
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v23, v5

    move/from16 v20, v7

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .end local v3
    .end local v4
    .end local v5
    .end local v7
    .end local v9
    .end local v10
    .restart local v18
    .restart local v19
    .restart local v20
    .restart local v21
    .restart local v22
    .restart local v23
    goto :goto_7

    .end local v18
    .end local v19
    .end local v20
    .end local v21
    .end local v22
    .end local v23
    .restart local v3
    .restart local v4
    .restart local v5
    .restart local v7
    .restart local v9
    .restart local v10
    :catchall_8
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v7

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .end local v3
    .end local v4
    .end local v7
    .end local v9
    .end local v10
    .restart local v18
    .restart local v19
    .restart local v20
    .restart local v21
    .restart local v22
    :goto_7
    if-eqz v6, :cond_11

    .line 208
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 210
    :cond_11
    if-eqz v13, :cond_12

    .line 211
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 213
    :cond_12
    throw v0

    .line 215
    .end local v11
    .end local v13
    .end local v18
    .end local v19
    .end local v20
    .end local v21
    .end local v22
    .restart local v3
    .restart local v4
    .restart local v7
    .restart local v9
    :cond_13
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v7

    move-object/from16 v21, v9

    .line 221
    .end local v3
    .end local v4
    .end local v7
    .end local v9
    .restart local v18
    .restart local v19
    .restart local v20
    .restart local v21
    :goto_8
    return v2
.end method

.method private exception(I)V
    .locals 1
    .param p1, "what"    # I

    .line 225
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    invoke-virtual {v0, p1}, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->sendSyncMessage(I)V

    .line 228
    :cond_0
    return-void
.end method

.method private sendDowning(I)V
    .locals 2
    .param p1, "percent"    # I

    .line 231
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-boolean v0, p0, Lcom/readboy/store/download/DownloadRunnable;->cancel:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    const/16 v1, 0x256

    invoke-virtual {v0, v1, p1}, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->sendSyncMessageAndArg(II)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    const/16 v1, 0x257

    invoke-virtual {v0, v1}, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->sendSyncMessage(I)V

    .line 238
    :cond_1
    :goto_0
    return-void
.end method

.method private sendMsg(I)V
    .locals 1
    .param p1, "msg"    # I

    .line 108
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    invoke-virtual {v0, p1}, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->sendSyncMessage(I)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/readboy/store/download/DownloadRunnable;->downloadPercent:I

    .line 344
    iput v0, p0, Lcom/readboy/store/download/DownloadRunnable;->breakPoint:I

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/readboy/store/download/DownloadRunnable;->cancel:Z

    .line 346
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    invoke-virtual {v0, v1}, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 349
    :cond_0
    iput-object v1, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    .line 350
    iput-object v1, p0, Lcom/readboy/store/download/DownloadRunnable;->listener:Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    .line 351
    return-void
.end method

.method public run()V
    .locals 6

    .line 61
    const/16 v0, 0x254

    const v1, 0xfff2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/readboy/store/download/DownloadRunnable;->sendMsg(I)V

    .line 63
    invoke-direct {p0}, Lcom/readboy/store/download/DownloadRunnable;->download()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0, v1}, Lcom/readboy/store/download/DownloadRunnable;->sendMsg(I)V

    .line 65
    return-void

    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/readboy/store/download/DownloadRunnable;->cancel:Z

    if-nez v0, :cond_3

    .line 68
    invoke-direct {p0}, Lcom/readboy/store/download/DownloadRunnable;->checkMd5()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 70
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "filePath":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ".temp"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "needFilePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v3, "finalFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 76
    :cond_1
    iget-object v4, p0, Lcom/readboy/store/download/DownloadRunnable;->tempFile:Ljava/io/File;

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 77
    iget-object v4, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    const/16 v5, 0x255

    invoke-virtual {v4, v5, v3}, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->sendSyncMessageAndObj(ILjava/lang/Object;)V

    .line 79
    .end local v0
    .end local v2
    .end local v3
    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/readboy/store/download/DownloadRunnable;->mHandler:Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;

    const/16 v2, 0x258

    invoke-virtual {v0, v2}, Lcom/readboy/store/download/DownloadRunnable$DownloadHandler;->sendSyncMessage(I)V

    goto :goto_0

    .line 90
    :cond_3
    const/16 v0, 0x257

    invoke-direct {p0, v0}, Lcom/readboy/store/download/DownloadRunnable;->exception(I)V

    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    invoke-direct {p0, v1}, Lcom/readboy/store/download/DownloadRunnable;->exception(I)V

    .end local v0
    goto :goto_1

    .line 96
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    const v1, 0xfff1

    invoke-direct {p0, v1}, Lcom/readboy/store/download/DownloadRunnable;->exception(I)V

    .end local v0
    goto :goto_0

    .line 92
    :catch_2
    move-exception v0

    .line 94
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 95
    const v1, 0xfff4

    invoke-direct {p0, v1}, Lcom/readboy/store/download/DownloadRunnable;->exception(I)V

    .line 104
    .end local v0
    :cond_4
    :goto_0
    nop

    .line 105
    :goto_1
    return-void
.end method

.method public setOnDownloadStateChanged(Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;)V
    .locals 0
    .param p1, "listener"    # Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    .line 354
    iput-object p1, p0, Lcom/readboy/store/download/DownloadRunnable;->listener:Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;

    .line 355
    return-void
.end method
