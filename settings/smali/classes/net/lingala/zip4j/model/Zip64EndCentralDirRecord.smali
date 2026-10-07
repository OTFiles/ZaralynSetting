.class public Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
.super Ljava/lang/Object;
.source "Zip64EndCentralDirRecord.java"


# instance fields
.field private extensibleDataSector:[B

.field private noOfThisDisk:I

.field private noOfThisDiskStartOfCentralDir:I

.field private offsetStartCenDirWRTStartDiskNo:J

.field private signature:J

.field private sizeOfCentralDir:J

.field private sizeOfZip64EndCentralDirRec:J

.field private totNoOfEntriesInCentralDir:J

.field private totNoOfEntriesInCentralDirOnThisDisk:J

.field private versionMadeBy:I

.field private versionNeededToExtract:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNoOfThisDisk()I
    .locals 1

    .line 76
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->noOfThisDisk:I

    return v0
.end method

.method public getOffsetStartCenDirWRTStartDiskNo()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->offsetStartCenDirWRTStartDiskNo:J

    return-wide v0
.end method

.method public getSizeOfZip64EndCentralDirRec()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->sizeOfZip64EndCentralDirRec:J

    return-wide v0
.end method

.method public getTotNoOfEntriesInCentralDir()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->totNoOfEntriesInCentralDir:J

    return-wide v0
.end method

.method public setExtensibleDataSector([B)V
    .locals 0
    .param p1, "extensibleDataSector"    # [B

    .line 130
    iput-object p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->extensibleDataSector:[B

    .line 131
    return-void
.end method

.method public setNoOfThisDisk(I)V
    .locals 0
    .param p1, "noOfThisDisk"    # I

    .line 80
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->noOfThisDisk:I

    .line 81
    return-void
.end method

.method public setNoOfThisDiskStartOfCentralDir(I)V
    .locals 0
    .param p1, "noOfThisDiskStartOfCentralDir"    # I

    .line 88
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->noOfThisDiskStartOfCentralDir:I

    .line 89
    return-void
.end method

.method public setOffsetStartCenDirWRTStartDiskNo(J)V
    .locals 0
    .param p1, "offsetStartCenDirWRTStartDiskNo"    # J

    .line 122
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->offsetStartCenDirWRTStartDiskNo:J

    .line 123
    return-void
.end method

.method public setSignature(J)V
    .locals 0
    .param p1, "signature"    # J

    .line 48
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->signature:J

    .line 49
    return-void
.end method

.method public setSizeOfCentralDir(J)V
    .locals 0
    .param p1, "sizeOfCentralDir"    # J

    .line 113
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->sizeOfCentralDir:J

    .line 114
    return-void
.end method

.method public setSizeOfZip64EndCentralDirRec(J)V
    .locals 0
    .param p1, "sizeOfZip64EndCentralDirRec"    # J

    .line 56
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->sizeOfZip64EndCentralDirRec:J

    .line 57
    return-void
.end method

.method public setTotNoOfEntriesInCentralDir(J)V
    .locals 0
    .param p1, "totNoOfEntriesInCentralDir"    # J

    .line 105
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->totNoOfEntriesInCentralDir:J

    .line 106
    return-void
.end method

.method public setTotNoOfEntriesInCentralDirOnThisDisk(J)V
    .locals 0
    .param p1, "totNoOfEntriesInCentralDirOnThisDisk"    # J

    .line 97
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->totNoOfEntriesInCentralDirOnThisDisk:J

    .line 98
    return-void
.end method

.method public setVersionMadeBy(I)V
    .locals 0
    .param p1, "versionMadeBy"    # I

    .line 64
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->versionMadeBy:I

    .line 65
    return-void
.end method

.method public setVersionNeededToExtract(I)V
    .locals 0
    .param p1, "versionNeededToExtract"    # I

    .line 72
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->versionNeededToExtract:I

    .line 73
    return-void
.end method
