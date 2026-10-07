.class public Lnet/lingala/zip4j/unzip/UnzipEngine;
.super Ljava/lang/Object;
.source "UnzipEngine.java"


# instance fields
.field private crc:Ljava/util/zip/CRC32;

.field private currSplitFileCounter:I

.field private decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

.field private fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field private localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 2
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    .line 58
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 62
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 63
    iput-object p2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    .line 64
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->crc:Ljava/util/zip/CRC32;

    .line 65
    return-void

    .line 59
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Invalid parameters passed to StoreUnzip. One or more of the parameters were null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateAESSaltLength(Lnet/lingala/zip4j/model/AESExtraDataRecord;)I
    .locals 2
    .param p1, "aesExtraDataRecord"    # Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 248
    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesStrength()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 259
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unable to determine salt length: invalid aes key strength"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_0    # 0x3
    const/16 v0, 0x10

    return v0

    .line 255
    :pswitch_1    # 0x2
    const/16 v0, 0xc

    return v0

    .line 253
    :pswitch_2    # 0x1
    const/16 v0, 0x8

    return v0

    .line 249
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unable to determine salt length: AESExtraDataRecord is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method private checkLocalHeader()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, "rafForLH":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->checkSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v1

    move-object v0, v1

    .line 328
    if-nez v0, :cond_0

    .line 329
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 332
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/core/HeaderReader;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 333
    .local v1, "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/core/HeaderReader;->readLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v2

    iput-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 335
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-eqz v2, :cond_4

    .line 340
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressionMethod()I

    move-result v2

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->getCompressionMethod()I

    move-result v3

    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_2

    .line 348
    if-eqz v0, :cond_1

    .line 350
    .end local v1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v1

    goto :goto_0

    .line 351
    :catch_1
    move-exception v1

    .line 341
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 348
    .restart local v1
    :cond_2
    if-eqz v0, :cond_3

    .line 350
    .end local v1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 353
    :catch_2
    move-exception v1

    goto :goto_1

    .line 351
    :catch_3
    move-exception v1

    .line 344
    :cond_3
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 336
    .restart local v1
    :cond_4
    :try_start_3
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "error reading local file header. Is this a valid zip file?"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 347
    .end local v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 345
    :catch_4
    move-exception v1

    .line 346
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 347
    .end local v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    nop

    .line 348
    if-eqz v0, :cond_5

    .line 350
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    .line 353
    :catch_5
    move-exception v2

    goto :goto_3

    .line 351
    :catch_6
    move-exception v2

    .line 357
    :cond_5
    :goto_3
    throw v1
.end method

.method private checkSplitFile()Ljava/io/RandomAccessFile;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 362
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v0

    .line 363
    .local v0, "diskNumberStartOfFile":I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    .line 364
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "curZipFile":Ljava/lang/String;
    const/4 v2, 0x0

    .line 366
    .local v2, "partFile":Ljava/lang/String;
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    .line 367
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 369
    :cond_0
    const/16 v3, 0x9

    if-lt v0, v3, :cond_1

    .line 370
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, ".z"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 372
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, ".z0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .local v3, "raf":Ljava/io/RandomAccessFile;
    iget v5, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 380
    const/4 v5, 0x4

    new-array v5, v5, [B

    .line 381
    .local v5, "splitSig":[B
    invoke-virtual {v3, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 382
    invoke-static {v5, v4}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v4

    int-to-long v6, v4

    const-wide/32 v8, 0x8074b50

    cmp-long v4, v6, v8

    if-nez v4, :cond_2

    .end local v5
    goto :goto_1

    .line 383
    .restart local v5
    :cond_2
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string v6, "invalid first part split file signature"

    invoke-direct {v4, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 386
    .end local v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-object v3

    .line 389
    .end local v3
    :catch_0
    move-exception v3

    .line 390
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v4, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 387
    .end local v3
    :catch_1
    move-exception v3

    .line 388
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v4, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 393
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 474
    if-eqz p1, :cond_3

    .line 475
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 476
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    goto :goto_3

    .line 484
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, " - Wrong Password?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .end local v0
    goto :goto_0

    .line 481
    .restart local v0
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    .end local v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    .line 487
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 490
    :catch_1
    move-exception v0

    goto :goto_5

    .line 484
    :goto_1
    nop

    .line 486
    if-eqz p2, :cond_2

    .line 487
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 488
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 p2, 0x0

    goto :goto_2

    .line 490
    :catch_2
    move-exception v1

    .line 493
    :cond_2
    :goto_2
    throw v0

    .line 486
    :cond_3
    :goto_3
    if-eqz p2, :cond_4

    .line 487
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 488
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    const/4 p2, 0x0

    .line 494
    :cond_4
    :goto_5
    return-void
.end method

.method private createFileHandler(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->checkSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 406
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 408
    :goto_0
    return-object v0

    .line 411
    .end local v0
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 409
    .end local v0
    :catch_1
    move-exception v0

    .line 410
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 398
    .end local v0
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input parameter is null in getFilePointer"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAESPasswordVerifier(Ljava/io/RandomAccessFile;)[B
    .locals 2
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 239
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [B

    .line 240
    .local v0, "pvBytes":[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 241
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 242
    .end local v0
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getAESSalt(Ljava/io/RandomAccessFile;)[B
    .locals 4
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    return-object v0

    .line 227
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    .line 228
    .local v0, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->calculateAESSaltLength(Lnet/lingala/zip4j/model/AESExtraDataRecord;)I

    move-result v1

    new-array v1, v1, [B

    .line 229
    .local v1, "saltBytes":[B
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getOffsetStartOfData()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 230
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 231
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 232
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getOutputFileNameWithPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "newFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    move-object v0, p2

    goto :goto_0

    .line 444
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 446
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "file.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 2
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "newFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 417
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getOutputFileNameWithPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 428
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 432
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 433
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 434
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 418
    .end local v0
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid output path"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getStandardDecrypterHeaderBytes(Ljava/io/RandomAccessFile;)[B
    .locals 4
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 211
    const/16 v0, 0xc

    :try_start_0
    new-array v1, v0, [B

    .line 212
    .local v1, "headerBytes":[B
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getOffsetStartOfData()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 213
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 214
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 217
    .end local v1
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 215
    .end local v0
    :catch_1
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private init(Ljava/io/RandomAccessFile;)V
    .locals 2
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->initDecrypter(Ljava/io/RandomAccessFile;)V

    .line 191
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 186
    .end local v0
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    throw v0

    .line 181
    .end local v0
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "local file header is null, cannot initialize input stream"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initDecrypter(Ljava/io/RandomAccessFile;)V
    .locals 4
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lnet/lingala/zip4j/crypto/StandardDecrypter;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getStandardDecrypterHeaderBytes(Ljava/io/RandomAccessFile;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/crypto/StandardDecrypter;-><init>(Lnet/lingala/zip4j/model/FileHeader;[B)V

    iput-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 202
    new-instance v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getAESSalt(Ljava/io/RandomAccessFile;)[B

    move-result-object v2

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getAESPasswordVerifier(Ljava/io/RandomAccessFile;)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/crypto/AESDecrypter;-><init>(Lnet/lingala/zip4j/model/LocalFileHeader;[B[B)V

    iput-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    goto :goto_0

    .line 204
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unsupported encryption method"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_2
    :goto_0
    return-void

    .line 195
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "local file header is null, cannot init decrypter"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkCRC()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v0, :cond_4

    .line 265
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    .line 266
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    instance-of v0, v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getCalculatedAuthenticationBytes()[B

    move-result-object v0

    .line 268
    .local v0, "tmpMacBytes":[B
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v1, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v1}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getStoredMac()[B

    move-result-object v1

    .line 269
    .local v1, "storedMac":[B
    const/16 v2, 0xa

    new-array v3, v2, [B

    .line 271
    .local v3, "calculatedMac":[B
    if-eqz v1, :cond_1

    .line 275
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0
    .end local v1
    .end local v3
    goto/16 :goto_0

    .line 278
    .restart local v0
    .restart local v1
    .restart local v3
    :cond_0
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "invalid CRC (MAC) for file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_1
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "CRC (MAC) check failed for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    .end local v0
    .end local v1
    .end local v3
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 283
    .local v0, "calculatedCRC":J
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    .line 284
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "invalid CRC for file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "errMsg":Ljava/lang/String;
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 286
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v3

    if-nez v3, :cond_3

    .line 287
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, " - Wrong Password?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    :cond_3
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    .end local v0
    .end local v2
    :cond_4
    :goto_0
    return-void
.end method

.method public getDecrypter()Lnet/lingala/zip4j/crypto/IDecrypter;
    .locals 1

    .line 511
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    return-object v0
.end method

.method public getFileHeader()Lnet/lingala/zip4j/model/FileHeader;
    .locals 1

    .line 507
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    return-object v0
.end method

.method public getInputStream()Lnet/lingala/zip4j/io/ZipInputStream;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 105
    move-object/from16 v8, p0

    iget-object v0, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v0, :cond_a

    .line 109
    const/4 v0, 0x0

    move-object v1, v0

    .line 111
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    const-string v0, "r"

    invoke-direct {v8, v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->createFileHandler(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v9, v0

    .line 112
    .end local v1
    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v0, "local header and file header do not match"

    .line 115
    .local v0, "errMsg":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->checkLocalHeader()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 118
    invoke-direct {v8, v9}, Lnet/lingala/zip4j/unzip/UnzipEngine;->init(Ljava/io/RandomAccessFile;)V

    .line 120
    iget-object v1, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v1

    .line 121
    .local v1, "comprSize":J
    iget-object v3, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->getOffsetStartOfData()J

    move-result-wide v3

    .line 123
    .local v3, "offsetStartOfData":J
    iget-object v5, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v5

    const/16 v6, 0x63

    if-eqz v5, :cond_2

    .line 124
    iget-object v5, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 125
    iget-object v5, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    instance-of v5, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v5, :cond_0

    .line 126
    iget-object v5, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v5, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getSaltLength()I

    move-result v5

    .line 127
    iget-object v7, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v7, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getPasswordVerifierLength()I

    move-result v7

    .line 126
    add-int/2addr v5, v7

    .line 127
    add-int/lit8 v5, v5, 0xa

    int-to-long v10, v5

    sub-long/2addr v1, v10

    .line 128
    iget-object v5, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v5, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getSaltLength()I

    move-result v5

    .line 129
    iget-object v7, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v7, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getPasswordVerifierLength()I

    move-result v7

    add-int/2addr v5, v7

    int-to-long v10, v5

    add-long/2addr v3, v10

    goto :goto_0

    .line 131
    :cond_0
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "invalid decryptor when trying to calculate compressed size for AES encrypted file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 132
    iget-object v7, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    :cond_1
    iget-object v5, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v5

    if-nez v5, :cond_2

    .line 135
    const-wide/16 v10, 0xc

    sub-long/2addr v1, v10

    .line 136
    add-long/2addr v3, v10

    .line 140
    .end local v1
    .end local v3
    .local v10, "comprSize":J
    .local v12, "offsetStartOfData":J
    :cond_2
    :goto_0
    move-wide v10, v1

    move-wide v12, v3

    iget-object v1, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressionMethod()I

    move-result v1

    .line 141
    .local v1, "compressionMethod":I
    iget-object v2, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 142
    iget-object v2, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 143
    iget-object v2, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()I

    move-result v2

    move v1, v2

    goto :goto_1

    .line 145
    :cond_3
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "AESExtraDataRecord does not exist for AES encrypted file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    .end local v1
    .local v14, "compressionMethod":I
    :cond_4
    :goto_1
    move v14, v1

    invoke-virtual {v9, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 149
    if-eqz v14, :cond_6

    const/16 v1, 0x8

    if-ne v14, v1, :cond_5

    .line 153
    new-instance v15, Lnet/lingala/zip4j/io/ZipInputStream;

    new-instance v7, Lnet/lingala/zip4j/io/InflaterInputStream;

    move-object v1, v7

    move-object v2, v9

    move-wide v3, v12

    move-wide v5, v10

    move/from16 v16, v14

    move-object v14, v7

    move-object v7, v8

    .end local v14
    .local v16, "compressionMethod":I
    invoke-direct/range {v1 .. v7}, Lnet/lingala/zip4j/io/InflaterInputStream;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V

    invoke-direct {v15, v14}, Lnet/lingala/zip4j/io/ZipInputStream;-><init>(Lnet/lingala/zip4j/io/BaseInputStream;)V

    return-object v15

    .line 155
    .end local v16
    .restart local v14
    :cond_5
    move/from16 v16, v14

    .end local v14
    .restart local v16
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "compression type not supported"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    .end local v16
    .restart local v14
    :cond_6
    move/from16 v16, v14

    .end local v14
    .restart local v16
    new-instance v14, Lnet/lingala/zip4j/io/ZipInputStream;

    new-instance v15, Lnet/lingala/zip4j/io/PartInputStream;

    move-object v1, v15

    move-object v2, v9

    move-wide v3, v12

    move-wide v5, v10

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lnet/lingala/zip4j/io/PartInputStream;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V

    invoke-direct {v14, v15}, Lnet/lingala/zip4j/io/ZipInputStream;-><init>(Lnet/lingala/zip4j/io/BaseInputStream;)V

    return-object v14

    .line 116
    .end local v10
    .end local v12
    .end local v16
    :cond_7
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    .end local v0
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 157
    :catch_1
    move-exception v0

    goto :goto_4

    .line 166
    .end local v9
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    move-object v9, v1

    .end local v1
    .restart local v9
    :goto_2
    move-object v1, v0

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v9, :cond_8

    .line 169
    :try_start_2
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 170
    :catch_3
    move-exception v0

    .line 173
    :cond_8
    :goto_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 157
    .end local v9
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v9, v1

    .end local v1
    .restart local v9
    :goto_4
    move-object v1, v0

    .line 158
    .local v1, "e":Lnet/lingala/zip4j/exception/ZipException;
    if-eqz v9, :cond_9

    .line 160
    :try_start_3
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_5

    .line 161
    :catch_5
    move-exception v0

    .line 165
    :cond_9
    :goto_5
    throw v1

    .line 106
    .end local v1
    .end local v9
    :cond_a
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header is null, cannot get inputstream"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocalFileHeader()Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 1

    .line 519
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    return-object v0
.end method

.method public getZipModel()Lnet/lingala/zip4j/model/ZipModel;
    .locals 1

    .line 515
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object v0
.end method

.method public startNextSplitFile()Ljava/io/RandomAccessFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "currZipFile":Ljava/lang/String;
    const/4 v1, 0x0

    .line 452
    .local v1, "partFile":Ljava/lang/String;
    iget v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 453
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 455
    :cond_0
    iget v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    .line 456
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, ".z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 458
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, ".z0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    :goto_0
    iget v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    .line 463
    :try_start_0
    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v2

    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 469
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 464
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "zip split file does not exist: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 466
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    .line 467
    .local v2, "e":Lnet/lingala/zip4j/exception/ZipException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Lnet/lingala/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public unzipFile(Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 7
    .param p1, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "newFileName"    # Ljava/lang/String;
    .param p4, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v0, :cond_2

    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 75
    .local v1, "os":Ljava/io/OutputStream;
    const/16 v2, 0x1000

    :try_start_0
    new-array v2, v2, [B

    .line 76
    .local v2, "buff":[B
    const/4 v3, -0x1

    .line 78
    .local v3, "readLength":I
    invoke-virtual {p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getInputStream()Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v4

    move-object v0, v4

    .line 79
    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v1, v4

    .line 81
    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v3, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 91
    invoke-direct {p0, v0, v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 93
    iget-object v4, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    new-instance v5, Ljava/io/File;

    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getOutputFileNameWithPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, p4}, Lnet/lingala/zip4j/unzip/UnzipUtil;->applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 100
    .end local v2
    .end local v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0, v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 102
    return-void

    .line 82
    .restart local v2
    .restart local v3
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 83
    int-to-long v5, v3

    invoke-virtual {p1, v5, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 84
    invoke-virtual {p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 86
    invoke-virtual {p1, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 100
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v0, v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 87
    return-void

    .line 99
    .end local v2
    .end local v3
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 95
    .end local v2
    :catch_1
    move-exception v2

    .line 96
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 99
    .end local v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    nop

    .line 100
    invoke-direct {p0, v0, v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 101
    throw v2

    .line 70
    .end local v0
    .end local v1
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Invalid parameters passed during unzipping file. One or more of the parameters were null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCRC(I)V
    .locals 1
    .param p1, "b"    # I

    .line 497
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    .line 498
    return-void
.end method

.method public updateCRC([BII)V
    .locals 1
    .param p1, "buff"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 501
    if-eqz p1, :cond_0

    .line 502
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 504
    :cond_0
    return-void
.end method
