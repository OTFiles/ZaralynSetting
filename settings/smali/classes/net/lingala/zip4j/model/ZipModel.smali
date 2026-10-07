.class public Lnet/lingala/zip4j/model/ZipModel;
.super Ljava/lang/Object;
.source "ZipModel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

.field private endCentralDirRecord:Lnet/lingala/zip4j/model/EndCentralDirRecord;

.field private fileNameCharset:Ljava/lang/String;

.field private isZip64Format:Z

.field private splitArchive:Z

.field private splitLength:J

.field private zip64EndCentralDirLocator:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

.field private zip64EndCentralDirRecord:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

.field private zipFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->splitLength:J

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 173
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;
    .locals 1

    .line 74
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    return-object v0
.end method

.method public getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .locals 1

    .line 82
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->endCentralDirRecord:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    return-object v0
.end method

.method public getFileNameCharset()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->fileNameCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    .locals 1

    .line 115
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndCentralDirLocator:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    return-object v0
.end method

.method public getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    .locals 1

    .line 124
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndCentralDirRecord:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    return-object v0
.end method

.method public getZipFile()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zipFile:Ljava/lang/String;

    return-object v0
.end method

.method public isSplitArchive()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->splitArchive:Z

    return v0
.end method

.method public isZip64Format()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    return v0
.end method

.method public setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V
    .locals 0
    .param p1, "centralDirectory"    # Lnet/lingala/zip4j/model/CentralDirectory;

    .line 78
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 79
    return-void
.end method

.method public setEndCentralDirRecord(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V
    .locals 0
    .param p1, "endCentralDirRecord"    # Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 86
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->endCentralDirRecord:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 87
    return-void
.end method

.method public setFileNameCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileNameCharset"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->fileNameCharset:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setSplitArchive(Z)V
    .locals 0
    .param p1, "splitArchive"    # Z

    .line 103
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->splitArchive:Z

    .line 104
    return-void
.end method

.method public setZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V
    .locals 0
    .param p1, "zip64EndCentralDirLocator"    # Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 120
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndCentralDirLocator:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 121
    return-void
.end method

.method public setZip64EndCentralDirRecord(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V
    .locals 0
    .param p1, "zip64EndCentralDirRecord"    # Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    .line 129
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndCentralDirRecord:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    .line 130
    return-void
.end method

.method public setZip64Format(Z)V
    .locals 0
    .param p1, "isZip64Format"    # Z

    .line 137
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    .line 138
    return-void
.end method

.method public setZipFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "zipFile"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zipFile:Ljava/lang/String;

    .line 112
    return-void
.end method
