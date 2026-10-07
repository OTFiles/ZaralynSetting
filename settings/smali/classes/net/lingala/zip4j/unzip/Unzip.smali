.class public Lnet/lingala/zip4j/unzip/Unzip;
.super Ljava/lang/Object;
.source "Unzip.java"


# instance fields
.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 2
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-eqz p1, :cond_0

    .line 42
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/Unzip;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 43
    return-void

    .line 39
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "ZipModel is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$0(Lnet/lingala/zip4j/unzip/Unzip;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractAll(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    return-void
.end method

.method private calculateTotalWork(Ljava/util/ArrayList;)J
    .locals 8
    .param p1, "fileHeaders"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 211
    if-eqz p1, :cond_2

    .line 215
    const-wide/16 v0, 0x0

    .line 217
    .local v0, "totalWork":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 228
    .end local v2
    return-wide v0

    .line 218
    .restart local v2
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/FileHeader;

    .line 219
    .local v3, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 220
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 221
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 223
    :cond_1
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 217
    .end local v3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v0
    .end local v2
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "fileHeaders is null, cannot calculate total work"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOutputDirectoryStructure(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "newFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 181
    if-eqz p1, :cond_3

    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {p3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    move-object v0, p3

    .line 191
    :cond_0
    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    return-void

    .line 196
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "compOutPath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "parentDir":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v4, "parentDirFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 202
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 207
    .end local v2
    .end local v3
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 182
    .end local v0
    .end local v1
    .end local v2
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Cannot check output directory structure...one of the parameters was null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initExtractAll(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .locals 8
    .param p1, "fileHeaders"    # Ljava/util/ArrayList;
    .param p2, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "outPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 90
    .end local v0
    return-void

    .line 82
    .restart local v0
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    .line 83
    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p4

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 84
    invoke-virtual {p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const/4 v2, 0x3

    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 86
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 87
    return-void

    .line 81
    .end local v1
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initExtractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 4
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .param p4, "newFileName"    # Ljava/lang/String;
    .param p5, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 126
    if-eqz p1, :cond_4

    .line 131
    :try_start_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v0

    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_2

    .line 141
    :try_start_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    return-void

    .line 145
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "completePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 148
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 150
    .end local v0
    .end local v1
    .end local v2
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p5, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 152
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 156
    .end local v0
    :cond_2
    invoke-direct {p0, p1, p2, p4}, Lnet/lingala/zip4j/unzip/Unzip;->checkOutputDirectoryStructure(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Lnet/lingala/zip4j/unzip/UnzipEngine;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/Unzip;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0, v1, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;-><init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)V

    .line 160
    .local v0, "unzipEngine":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v0, p5, p2, p4, p3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->unzipFile(Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 173
    .end local v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_0
    return-void

    .line 161
    .restart local v0
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {p5, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 163
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 169
    .end local v0
    .end local v1
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p5, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 171
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 166
    .end local v0
    :catch_3
    move-exception v0

    .line 167
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    invoke-virtual {p5, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 168
    throw v0

    .line 127
    .end local v0
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "fileHeader is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public extractAll(Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 10
    .param p1, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "runInThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/Unzip;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    .line 50
    .local v0, "centralDirectory":Lnet/lingala/zip4j/model/CentralDirectory;
    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    .line 57
    .local v1, "fileHeaders":Ljava/util/ArrayList;
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 58
    invoke-direct {p0, v1}, Lnet/lingala/zip4j/unzip/Unzip;->calculateTotalWork(Ljava/util/ArrayList;)J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 59
    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 61
    if-eqz p4, :cond_0

    .line 62
    new-instance v9, Lnet/lingala/zip4j/unzip/Unzip$1;

    const-string v4, "Zip4j"

    move-object v2, v9

    move-object v3, p0

    move-object v5, v1

    move-object v6, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lnet/lingala/zip4j/unzip/Unzip$1;-><init>(Lnet/lingala/zip4j/unzip/Unzip;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    .line 71
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 73
    .end local v2
    :cond_0
    invoke-direct {p0, v1, p1, p3, p2}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractAll(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 52
    .end local v1
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid central directory in zipModel"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
