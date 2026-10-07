.class public Lnet/lingala/zip4j/core/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"


# instance fields
.field private file:Ljava/lang/String;

.field private fileNameCharset:Ljava/lang/String;

.field private isEncrypted:Z

.field private mode:I

.field private progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private runInThread:Z

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lnet/lingala/zip4j/core/ZipFile;->mode:I

    .line 89
    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-direct {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/core/ZipFile;->runInThread:Z

    .line 91
    return-void

    .line 83
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 84
    const/4 v1, 0x1

    .line 83
    const-string v2, "Input zip file parameter is not null"

    invoke-direct {v0, v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "zipFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/io/File;)V

    .line 73
    return-void
.end method

.method private readZipInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 410
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileReadAccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    iget v0, p0, Lnet/lingala/zip4j/core/ZipFile;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 422
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v1, :cond_0

    .line 424
    new-instance v1, Lnet/lingala/zip4j/core/HeaderReader;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 425
    .local v1, "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    iget-object v2, p0, Lnet/lingala/zip4j/core/ZipFile;->fileNameCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/core/HeaderReader;->readAllHeaders(Ljava/lang/String;)Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v2

    iput-object v2, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 426
    iget-object v2, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v2, :cond_0

    .line 427
    iget-object v2, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v3, p0, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->setZipFile(Ljava/lang/String;)V

    .line 433
    .end local v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    nop

    .line 435
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    .line 441
    :goto_0
    return-void

    .line 432
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 430
    :catch_1
    move-exception v1

    .line 431
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 432
    .end local v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    nop

    .line 433
    if-eqz v0, :cond_1

    .line 435
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 436
    :catch_2
    move-exception v2

    .line 440
    :cond_1
    :goto_2
    throw v1

    .line 415
    .end local v0
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "no read access for the input zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip file does not exist"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public extractAll(Ljava/lang/String;)V
    .locals 1
    .param p1, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 453
    return-void
.end method

.method public extractAll(Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 3
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 466
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 470
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkOutputFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_0

    .line 475
    invoke-direct {p0}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 479
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 487
    new-instance v0, Lnet/lingala/zip4j/unzip/Unzip;

    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/unzip/Unzip;-><init>(Lnet/lingala/zip4j/model/ZipModel;)V

    .line 488
    .local v0, "unzip":Lnet/lingala/zip4j/unzip/Unzip;
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    iget-boolean v2, p0, Lnet/lingala/zip4j/core/ZipFile;->runInThread:Z

    invoke-virtual {v0, p2, p1, v1, v2}, Lnet/lingala/zip4j/unzip/Unzip;->extractAll(Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    .line 490
    return-void

    .line 484
    .end local v0
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid operation - Zip4j is in busy state"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Internal error occurred when extracting zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid output path"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "output path is null or invalid"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEncrypted()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_1

    .line 722
    invoke-direct {p0}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 723
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 732
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    .line 733
    .local v0, "fileHeaderList":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .end local v1
    goto :goto_2

    .line 734
    .restart local v1
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/FileHeader;

    .line 735
    .local v2, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v2, :cond_3

    .line 736
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 737
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted:Z

    .line 738
    nop

    .line 743
    .end local v1
    .end local v2
    :goto_2
    iget-boolean v1, p0, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted:Z

    return v1

    .line 733
    .restart local v1
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 729
    .end local v0
    .end local v1
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidZipFile()Z
    .locals 2

    .line 1002
    :try_start_0
    invoke-direct {p0}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 1003
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public setFileNameCharset(Ljava/lang/String;)V
    .locals 3
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 959
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isSupportedCharset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    iput-object p1, p0, Lnet/lingala/zip4j/core/ZipFile;->fileNameCharset:Ljava/lang/String;

    .line 968
    return-void

    .line 964
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "unsupported charset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "null or empty charset name"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPassword([C)V
    .locals 2
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_1

    .line 662
    invoke-direct {p0}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 663
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 672
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 679
    .end local v0
    return-void

    .line 673
    .restart local v0
    :cond_2
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 674
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 675
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/model/FileHeader;->setPassword([C)V

    .line 672
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 669
    .end local v0
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
