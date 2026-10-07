.class public Lnet/lingala/zip4j/core/HeaderReader;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field private zip4jRaf:Ljava/io/RandomAccessFile;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    .line 55
    iput-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    .line 56
    return-void
.end method

.method private getLongByteFromIntByte([B)[B
    .locals 3
    .param p1, "intByte"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1108
    if-eqz p1, :cond_1

    .line 1112
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1116
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    .line 1117
    .local v0, "longBuff":[B
    return-object v0

    .line 1113
    .end local v0
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid byte length, cannot expand to 8 bytes"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1109
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input parameter is null, cannot expand to 8 bytes"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readAESExtraDataRecord(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 7
    .param p1, "extraDataRecords"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1046
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1047
    return-object v0

    .line 1050
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1079
    .end local v1
    return-object v0

    .line 1051
    .restart local v1
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 1052
    .local v2, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    if-nez v2, :cond_2

    .line 1053
    goto :goto_1

    .line 1056
    :cond_2
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v3

    const-wide/32 v5, 0x9901

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 1058
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1062
    new-instance v0, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;-><init>()V

    .line 1064
    .local v0, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    invoke-virtual {v0, v5, v6}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setSignature(J)V

    .line 1065
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setDataSize(I)V

    .line 1067
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v3

    .line 1068
    .local v3, "aesData":[B
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v5

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVersionNumber(I)V

    .line 1069
    const/4 v5, 0x2

    new-array v6, v5, [B

    .line 1070
    .local v6, "vendorIDBytes":[B
    invoke-static {v3, v5, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1071
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVendorID(Ljava/lang/String;)V

    .line 1072
    const/4 v4, 0x4

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesStrength(I)V

    .line 1073
    const/4 v4, 0x5

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setCompressionMethod(I)V

    .line 1075
    return-object v0

    .line 1059
    .end local v0
    .end local v3
    .end local v6
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "corrput AES extra data records"

    invoke-direct {v0, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    .end local v2
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private readAndSaveAESExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 2
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1002
    if-eqz p1, :cond_3

    .line 1006
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1010
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderReader;->readAESExtraDataRecord(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    .line 1011
    .local v0, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    if-eqz v0, :cond_1

    .line 1012
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 1013
    const/16 v1, 0x63

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/FileHeader;->setEncryptionMethod(I)V

    .line 1015
    :cond_1
    return-void

    .line 1007
    .end local v0
    :cond_2
    :goto_0
    return-void

    .line 1003
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readAndSaveAESExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 2
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1023
    if-eqz p1, :cond_3

    .line 1027
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1031
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderReader;->readAESExtraDataRecord(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    .line 1032
    .local v0, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    if-eqz v0, :cond_1

    .line 1033
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 1034
    const/16 v1, 0x63

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V

    .line 1036
    :cond_1
    return-void

    .line 1028
    .end local v0
    :cond_2
    :goto_0
    return-void

    .line 1024
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readAndSaveExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 2
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    .line 411
    if-eqz p1, :cond_1

    .line 415
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraFieldLength()I

    move-result v0

    .line 416
    .local v0, "extraFieldLength":I
    if-gtz v0, :cond_0

    .line 417
    return-void

    .line 420
    :cond_0
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderReader;->readExtraDataRecords(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/FileHeader;->setExtraDataRecords(Ljava/util/ArrayList;)V

    .line 422
    return-void

    .line 412
    .end local v0
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid file handler when trying to read extra data record"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readAndSaveExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 2
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    .line 435
    if-eqz p1, :cond_1

    .line 439
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraFieldLength()I

    move-result v0

    .line 440
    .local v0, "extraFieldLength":I
    if-gtz v0, :cond_0

    .line 441
    return-void

    .line 444
    :cond_0
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderReader;->readExtraDataRecords(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setExtraDataRecords(Ljava/util/ArrayList;)V

    .line 446
    return-void

    .line 436
    .end local v0
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid file handler when trying to read extra data record"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readAndSaveZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 10
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 650
    if-eqz p1, :cond_6

    .line 654
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 658
    :cond_0
    nop

    .line 659
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v2

    .line 660
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v3

    .line 661
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v5

    .line 662
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v7

    .line 663
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v9

    .line 658
    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lnet/lingala/zip4j/core/HeaderReader;->readZip64ExtendedInfo(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    .line 665
    .local v0, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    if-eqz v0, :cond_4

    .line 666
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 667
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 668
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 670
    :cond_1
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 671
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 673
    :cond_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 674
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 676
    :cond_3
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 677
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 679
    :cond_4
    return-void

    .line 655
    .end local v0
    :cond_5
    :goto_0
    return-void

    .line 651
    :cond_6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readAndSaveZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 10
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 687
    if-eqz p1, :cond_4

    .line 691
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    nop

    .line 696
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v2

    .line 697
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v3

    .line 698
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v5

    .line 699
    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    .line 695
    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lnet/lingala/zip4j/core/HeaderReader;->readZip64ExtendedInfo(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    .line 701
    .local v0, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    if-eqz v0, :cond_2

    .line 702
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 704
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 705
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 707
    :cond_1
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 708
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 710
    :cond_2
    return-void

    .line 692
    .end local v0
    :cond_3
    :goto_0
    return-void

    .line 688
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 190
    move-object/from16 v1, p0

    iget-object v0, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_f

    .line 194
    iget-object v0, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 199
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/model/CentralDirectory;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    .line 200
    .local v0, "centralDirectory":Lnet/lingala/zip4j/model/CentralDirectory;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, "fileHeaderList":Ljava/util/ArrayList;
    iget-object v3, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    .line 203
    .local v3, "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v4

    .line 204
    .local v4, "offSetStartCentralDir":J
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()I

    move-result v6

    .line 206
    .local v6, "centralDirEntryCount":I
    iget-object v7, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 207
    iget-object v7, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v7

    move-wide v4, v7

    .line 208
    iget-object v7, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()J

    move-result-wide v7

    long-to-int v6, v7

    .line 211
    :cond_0
    iget-object v7, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 213
    const/4 v7, 0x4

    new-array v7, v7, [B

    .line 214
    .local v7, "intBuff":[B
    const/4 v8, 0x2

    new-array v9, v8, [B

    .line 215
    .local v9, "shortBuff":[B
    const/16 v10, 0x8

    new-array v10, v10, [B

    .line 217
    .local v10, "longBuff":[B
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v12, 0x0

    if-lt v11, v6, :cond_3

    .line 371
    .end local v11
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/CentralDirectory;->setFileHeaders(Ljava/util/ArrayList;)V

    .line 374
    new-instance v8, Lnet/lingala/zip4j/model/DigitalSignature;

    invoke-direct {v8}, Lnet/lingala/zip4j/model/DigitalSignature;-><init>()V

    .line 375
    .local v8, "digitalSignature":Lnet/lingala/zip4j/model/DigitalSignature;
    iget-object v11, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v11, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 376
    invoke-static {v7, v12}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v11

    .line 377
    .local v11, "signature":I
    int-to-long v13, v11

    const-wide/32 v15, 0x5054b50

    cmp-long v13, v13, v15

    if-eqz v13, :cond_1

    .line 378
    return-object v0

    .line 381
    :cond_1
    invoke-virtual {v8, v11}, Lnet/lingala/zip4j/model/DigitalSignature;->setHeaderSignature(I)V

    .line 384
    iget-object v13, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v13, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 385
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v12

    .line 386
    .local v12, "sizeOfData":I
    invoke-virtual {v8, v12}, Lnet/lingala/zip4j/model/DigitalSignature;->setSizeOfData(I)V

    .line 388
    if-lez v12, :cond_2

    .line 389
    new-array v13, v12, [B

    .line 390
    .local v13, "sigDataBuf":[B
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v13}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 391
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v14}, Lnet/lingala/zip4j/model/DigitalSignature;->setSignatureData(Ljava/lang/String;)V

    .line 394
    .end local v13
    :cond_2
    return-object v0

    .line 218
    .end local v8
    .end local v12
    .local v11, "i":I
    :cond_3
    new-instance v13, Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {v13}, Lnet/lingala/zip4j/model/FileHeader;-><init>()V

    .line 221
    .local v13, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 222
    invoke-static {v7, v12}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v14

    .line 223
    .local v14, "signature":I
    move-object/from16 v17, v9

    int-to-long v8, v14

    .end local v9
    .local v17, "shortBuff":[B
    const-wide/32 v15, 0x2014b50

    cmp-long v8, v8, v15

    if-nez v8, :cond_d

    .line 226
    invoke-virtual {v13, v14}, Lnet/lingala/zip4j/model/FileHeader;->setSignature(I)V

    .line 229
    iget-object v8, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v9, v17

    invoke-direct {v1, v8, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 230
    .end local v17
    .restart local v9
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v8

    invoke-virtual {v13, v8}, Lnet/lingala/zip4j/model/FileHeader;->setVersionMadeBy(I)V

    .line 233
    iget-object v8, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v8, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 234
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v8

    invoke-virtual {v13, v8}, Lnet/lingala/zip4j/model/FileHeader;->setVersionNeededToExtract(I)V

    .line 237
    iget-object v8, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v8, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 238
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v8

    and-int/lit16 v8, v8, 0x800

    const/4 v15, 0x1

    if-eqz v8, :cond_4

    move v8, v15

    goto :goto_1

    :cond_4
    move v8, v12

    :goto_1
    invoke-virtual {v13, v8}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameUTF8Encoded(Z)V

    .line 239
    aget-byte v8, v9, v12

    .line 240
    .local v8, "firstByte":I
    and-int/lit8 v16, v8, 0x1

    .line 241
    .local v16, "result":I
    if-eqz v16, :cond_5

    .line 242
    invoke-virtual {v13, v15}, Lnet/lingala/zip4j/model/FileHeader;->setEncrypted(Z)V

    .line 244
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, [B

    invoke-virtual {v13, v12}, Lnet/lingala/zip4j/model/FileHeader;->setGeneralPurposeFlag([B)V

    .line 247
    shr-int/lit8 v12, v8, 0x3

    if-ne v12, v15, :cond_6

    move v12, v15

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v13, v12}, Lnet/lingala/zip4j/model/FileHeader;->setDataDescriptorExists(Z)V

    .line 250
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 251
    const/4 v12, 0x0

    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v15

    invoke-virtual {v13, v15}, Lnet/lingala/zip4j/model/FileHeader;->setCompressionMethod(I)V

    .line 254
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 255
    const/4 v12, 0x0

    invoke-static {v7, v12}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v15

    invoke-virtual {v13, v15}, Lnet/lingala/zip4j/model/FileHeader;->setLastModFileTime(I)V

    .line 258
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 259
    const/4 v12, 0x0

    invoke-static {v7, v12}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v15

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    int-to-long v3, v15

    .end local v3
    .end local v4
    .local v18, "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .local v19, "offSetStartCentralDir":J
    invoke-virtual {v13, v3, v4}, Lnet/lingala/zip4j/model/FileHeader;->setCrc32(J)V

    .line 260
    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v13, v3}, Lnet/lingala/zip4j/model/FileHeader;->setCrcBuff([B)V

    .line 263
    iget-object v3, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v3, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 264
    invoke-direct {v1, v7}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v3

    .line 265
    .end local v10
    .local v3, "longBuff":[B
    move/from16 v21, v6

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v5

    .end local v6
    .local v21, "centralDirEntryCount":I
    invoke-virtual {v13, v5, v6}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 268
    iget-object v4, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v4, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 269
    invoke-direct {v1, v7}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v4

    move-object v3, v4

    .line 270
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v5

    invoke-virtual {v13, v5, v6}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 273
    iget-object v4, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v4, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 274
    const/4 v4, 0x0

    invoke-static {v9, v4}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v5

    move v4, v5

    .line 275
    .local v4, "fileNameLength":I
    invoke-virtual {v13, v4}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameLength(I)V

    .line 278
    iget-object v5, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v5, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 279
    const/4 v5, 0x0

    invoke-static {v9, v5}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v6

    move v5, v6

    .line 280
    .local v5, "extraFieldLength":I
    invoke-virtual {v13, v5}, Lnet/lingala/zip4j/model/FileHeader;->setExtraFieldLength(I)V

    .line 283
    iget-object v6, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 284
    const/4 v6, 0x0

    invoke-static {v9, v6}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v10

    move v6, v10

    .line 285
    .local v6, "fileCommentLength":I
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v10}, Lnet/lingala/zip4j/model/FileHeader;->setFileComment(Ljava/lang/String;)V

    .line 288
    iget-object v10, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v10, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 289
    const/4 v10, 0x0

    invoke-static {v9, v10}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v12

    invoke-virtual {v13, v12}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 292
    iget-object v10, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v10, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 293
    invoke-virtual {v9}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v13, v10}, Lnet/lingala/zip4j/model/FileHeader;->setInternalFileAttr([B)V

    .line 296
    iget-object v10, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v10, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 297
    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v13, v10}, Lnet/lingala/zip4j/model/FileHeader;->setExternalFileAttr([B)V

    .line 300
    iget-object v10, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v10, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 303
    invoke-direct {v1, v7}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v10

    .line 304
    .end local v3
    .restart local v10
    const/4 v12, 0x0

    invoke-static {v10, v12}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v22

    const-wide v24, 0xffffffffL

    move-object/from16 v26, v7

    move/from16 v27, v8

    and-long v7, v22, v24

    .end local v7
    .end local v8
    .local v26, "intBuff":[B
    .local v27, "firstByte":I
    invoke-virtual {v13, v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 306
    if-lez v4, :cond_b

    .line 307
    new-array v3, v4, [B

    .line 308
    .local v3, "fileNameBuf":[B
    iget-object v7, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v7, v3}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 314
    const/4 v7, 0x0

    .line 316
    .local v7, "fileName":Ljava/lang/String;
    iget-object v8, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 317
    new-instance v8, Ljava/lang/String;

    iget-object v15, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v3, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v7, v8

    goto :goto_3

    .line 319
    :cond_7
    invoke-virtual {v13}, Lnet/lingala/zip4j/model/FileHeader;->isFileNameUTF8Encoded()Z

    move-result v8

    invoke-static {v3, v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->decodeFileName([BZ)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 322
    :goto_3
    if-eqz v7, :cond_a

    .line 326
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v15, ":"

    invoke-direct {v8, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v15, "file.separator"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_8

    .line 327
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v15, ":"

    invoke-direct {v8, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v15, "file.separator"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v15, 0x2

    add-int/2addr v8, v15

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    goto :goto_4

    .line 330
    :cond_8
    const/4 v15, 0x2

    :goto_4
    invoke-virtual {v13, v7}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    .line 331
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    const/4 v12, 0x1

    :goto_5
    invoke-virtual {v13, v12}, Lnet/lingala/zip4j/model/FileHeader;->setDirectory(Z)V

    goto :goto_6

    .line 323
    :cond_a
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    const-string v12, "fileName is null when reading central directory"

    invoke-direct {v8, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 334
    .end local v3
    .end local v7
    :cond_b
    const/4 v15, 0x2

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    .line 338
    :goto_6
    invoke-direct {v1, v13}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 341
    invoke-direct {v1, v13}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 344
    invoke-direct {v1, v13}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveAESExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 363
    if-lez v6, :cond_c

    .line 364
    new-array v3, v6, [B

    .line 365
    .local v3, "fileCommentBuf":[B
    iget-object v7, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v7, v3}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 366
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v7}, Lnet/lingala/zip4j/model/FileHeader;->setFileComment(Ljava/lang/String;)V

    .line 369
    .end local v3
    :cond_c
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v4
    .end local v5
    .end local v6
    .end local v13
    .end local v14
    .end local v16
    .end local v27
    add-int/lit8 v11, v11, 0x1

    move v8, v15

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move/from16 v6, v21

    move-object/from16 v7, v26

    goto/16 :goto_0

    .line 224
    .end local v9
    .end local v18
    .end local v19
    .end local v21
    .end local v26
    .local v3, "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .local v4, "offSetStartCentralDir":J
    .local v6, "centralDirEntryCount":I
    .local v7, "intBuff":[B
    .restart local v13
    .restart local v14
    .restart local v17
    :cond_d
    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move/from16 v21, v6

    move-object/from16 v26, v7

    move-object/from16 v9, v17

    .end local v3
    .end local v4
    .end local v6
    .end local v7
    .end local v17
    .restart local v9
    .restart local v18
    .restart local v19
    .restart local v21
    .restart local v26
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Expected central directory entry not found (#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v11, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 395
    .end local v0
    .end local v2
    .end local v9
    .end local v10
    .end local v11
    .end local v13
    .end local v14
    .end local v18
    .end local v19
    .end local v21
    .end local v26
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 195
    .end local v0
    :cond_e
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "EndCentralRecord was null, maybe a corrupt zip file"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const/4 v2, 0x3

    const-string v3, "random access file was null"

    invoke-direct {v0, v3, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private readEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_5

    .line 111
    const/4 v0, 0x4

    :try_start_0
    new-array v1, v0, [B

    .line 112
    .local v1, "ebs":[B
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x16

    sub-long/2addr v2, v4

    .line 114
    .local v2, "pos":J
    new-instance v4, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    invoke-direct {v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;-><init>()V

    .line 115
    .local v4, "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    const/4 v5, 0x0

    move-wide v6, v2

    move v2, v5

    .line 117
    .local v2, "counter":I
    .local v6, "pos":J
    :goto_0
    iget-object v3, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    const-wide/16 v8, 0x1

    sub-long v8, v6, v8

    .local v8, "pos":J
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 118
    .end local v6
    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 119
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-static {v6, v1}, Lnet/lingala/zip4j/util/Raw;->readLeInt(Ljava/io/DataInput;[B)I

    move-result v6

    int-to-long v6, v6

    const-wide/32 v10, 0x6054b50

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    const/16 v6, 0xbb8

    if-le v2, v6, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    move-wide v6, v8

    goto :goto_0

    .line 121
    :cond_1
    :goto_1
    invoke-static {v1, v5}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v10

    if-nez v6, :cond_4

    .line 124
    new-array v6, v0, [B

    .line 125
    .local v6, "intBuff":[B
    const/4 v7, 0x2

    new-array v7, v7, [B

    .line 128
    .local v7, "shortBuff":[B
    invoke-virtual {v4, v10, v11}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setSignature(J)V

    .line 131
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 132
    invoke-static {v7, v5}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v10

    invoke-virtual {v4, v10}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 135
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 136
    invoke-static {v7, v5}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v10

    invoke-virtual {v4, v10}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    .line 139
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 140
    invoke-static {v7, v5}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v10

    invoke-virtual {v4, v10}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V

    .line 143
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 144
    invoke-static {v7, v5}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v10

    invoke-virtual {v4, v10}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    .line 147
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 148
    invoke-static {v6, v5}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v10

    invoke-virtual {v4, v10}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setSizeOfCentralDir(I)V

    .line 151
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 152
    invoke-direct {p0, v6}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v10

    .line 153
    .local v10, "longBuff":[B
    invoke-static {v10, v5}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 156
    iget-object v11, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v11, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 157
    invoke-static {v7, v5}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v11

    .line 158
    .local v11, "commentLength":I
    invoke-virtual {v4, v11}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setCommentLength(I)V

    .line 161
    if-lez v11, :cond_2

    .line 162
    new-array v12, v11, [B

    .line 163
    .local v12, "commentBuf":[B
    iget-object v13, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v13, v12}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 164
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v13}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setComment(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v4, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setCommentBytes([B)V

    goto :goto_2

    .line 167
    .end local v12
    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setComment(Ljava/lang/String;)V

    .line 170
    :goto_2
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v12

    .line 171
    .local v12, "diskNumber":I
    if-lez v12, :cond_3

    .line 172
    iget-object v5, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5, v3}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    goto :goto_3

    .line 174
    :cond_3
    iget-object v3, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3, v5}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 177
    :goto_3
    return-object v4

    .line 122
    .end local v6
    .end local v7
    .end local v10
    .end local v11
    .end local v12
    :cond_4
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "zip headers not found. probably not a zip file"

    invoke-direct {v3, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    .end local v1
    .end local v2
    .end local v4
    .end local v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Probably not a zip file or a corrupted zip file"

    invoke-direct {v2, v3, v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 107
    .end local v1
    :cond_5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const/4 v1, 0x3

    const-string v2, "random access file was null"

    invoke-direct {v0, v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private readExtraDataRecords(I)Ljava/util/ArrayList;
    .locals 9
    .param p1, "extraFieldLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 456
    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 457
    return-object v0

    .line 461
    :cond_0
    :try_start_0
    new-array v1, p1, [B

    .line 462
    .local v1, "extraFieldBuf":[B
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 464
    const/4 v2, 0x0

    .line 465
    .local v2, "counter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v3, "extraDataList":Ljava/util/ArrayList;
    :goto_0
    if-lt v2, p1, :cond_1

    goto :goto_1

    .line 467
    :cond_1
    new-instance v4, Lnet/lingala/zip4j/model/ExtraDataRecord;

    invoke-direct {v4}, Lnet/lingala/zip4j/model/ExtraDataRecord;-><init>()V

    .line 468
    .local v4, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v5

    .line 469
    .local v5, "header":I
    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setHeader(J)V

    .line 470
    add-int/lit8 v2, v2, 0x2

    .line 471
    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v6

    .line 473
    .local v6, "sizeOfRec":I
    const/4 v7, 0x2

    add-int v8, v7, v6

    if-le v8, p1, :cond_3

    .line 474
    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/Raw;->readShortBigEndian([BI)S

    move-result v8

    move v6, v8

    .line 475
    add-int/2addr v7, v6

    if-le v7, p1, :cond_3

    .line 478
    nop

    .line 493
    .end local v4
    .end local v5
    .end local v6
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 494
    return-object v3

    .line 496
    :cond_2
    return-object v0

    .line 482
    .restart local v4
    .restart local v5
    .restart local v6
    :cond_3
    invoke-virtual {v4, v6}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setSizeOfData(I)V

    .line 483
    add-int/lit8 v2, v2, 0x2

    .line 485
    if-lez v6, :cond_4

    .line 486
    new-array v7, v6, [B

    .line 487
    .local v7, "data":[B
    const/4 v8, 0x0

    invoke-static {v1, v2, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    invoke-virtual {v4, v7}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setData([B)V

    .line 490
    .end local v7
    :cond_4
    add-int/2addr v2, v6

    .line 491
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4
    .end local v5
    .end local v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    .end local v1
    .end local v2
    .end local v3
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readIntoBuff(Ljava/io/RandomAccessFile;[B)[B
    .locals 3
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1091
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1092
    return-object p2

    .line 1094
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "unexpected end of file when reading short buff"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "IOException when reading short buff"

    invoke-direct {v1, v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 515
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    .line 517
    .local v0, "zip64EndCentralDirLocator":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->setFilePointerToReadZip64EndCentralDirLoc()V

    .line 519
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 520
    .local v1, "intBuff":[B
    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 522
    .local v2, "longBuff":[B
    iget-object v3, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v3, v1}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 523
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v4

    .line 524
    .local v4, "signature":I
    int-to-long v5, v4

    const-wide/32 v7, 0x7064b50

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 525
    iget-object v5, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 526
    int-to-long v5, v4

    invoke-virtual {v0, v5, v6}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setSignature(J)V

    .line 532
    iget-object v5, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v5, v1}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 533
    nop

    .line 534
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v5

    .line 533
    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    .line 536
    iget-object v5, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v5, v2}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 537
    nop

    .line 538
    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v5

    .line 537
    invoke-virtual {v0, v5, v6}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    .line 540
    iget-object v5, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v5, v1}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 541
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    .line 543
    return-object v0

    .line 528
    :cond_0
    iget-object v5, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5, v3}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 529
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    return-object v3

    .line 545
    .end local v0
    .end local v1
    .end local v2
    .end local v4
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 511
    .end local v0
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid file handler when trying to read Zip64EndCentralDirLocator"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readZip64EndCentralDirRec()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 563
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->getOffsetZip64EndOfCentralDirRec()J

    move-result-wide v0

    .line 562
    nop

    .line 565
    .local v0, "offSetStartOfZip64CentralDir":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 570
    :try_start_0
    iget-object v4, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 572
    new-instance v4, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    invoke-direct {v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    .line 574
    .local v4, "zip64EndCentralDirRecord":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    const/4 v5, 0x2

    new-array v5, v5, [B

    .line 575
    .local v5, "shortBuff":[B
    const/4 v6, 0x4

    new-array v6, v6, [B

    .line 576
    .local v6, "intBuff":[B
    const/16 v7, 0x8

    new-array v7, v7, [B

    .line 579
    .local v7, "longBuff":[B
    iget-object v8, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v8, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 580
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v9

    .line 581
    .local v9, "signature":I
    int-to-long v10, v9

    const-wide/32 v12, 0x6064b50

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 584
    int-to-long v10, v9

    invoke-virtual {v4, v10, v11}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setSignature(J)V

    .line 587
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 588
    nop

    .line 589
    invoke-static {v7, v8}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v10

    .line 588
    invoke-virtual {v4, v10, v11}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setSizeOfZip64EndCentralDirRec(J)V

    .line 592
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v5}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 593
    invoke-static {v5, v8}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v10

    invoke-virtual {v4, v10}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setVersionMadeBy(I)V

    .line 596
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v5}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 597
    invoke-static {v5, v8}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v10

    invoke-virtual {v4, v10}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setVersionNeededToExtract(I)V

    .line 600
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 601
    invoke-static {v6, v8}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v10

    invoke-virtual {v4, v10}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 604
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 605
    nop

    .line 606
    invoke-static {v6, v8}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v10

    .line 605
    invoke-virtual {v4, v10}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    .line 609
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 610
    nop

    .line 611
    invoke-static {v7, v8}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v10

    .line 610
    invoke-virtual {v4, v10, v11}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(J)V

    .line 614
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 615
    nop

    .line 616
    invoke-static {v7, v8}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v10

    .line 615
    invoke-virtual {v4, v10, v11}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(J)V

    .line 619
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 620
    invoke-static {v7, v8}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setSizeOfCentralDir(J)V

    .line 623
    iget-object v10, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 624
    nop

    .line 625
    invoke-static {v7, v8}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v10

    .line 624
    invoke-virtual {v4, v10, v11}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setOffsetStartCenDirWRTStartDiskNo(J)V

    .line 629
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getSizeOfZip64EndCentralDirRec()J

    move-result-wide v10

    const-wide/16 v12, 0x2c

    sub-long/2addr v10, v12

    .line 630
    .local v10, "extDataSecSize":J
    cmp-long v2, v10, v2

    if-lez v2, :cond_0

    .line 631
    long-to-int v2, v10

    new-array v2, v2, [B

    .line 632
    .local v2, "extDataSecRecBuf":[B
    iget-object v3, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v3, v2}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 633
    invoke-virtual {v4, v2}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setExtensibleDataSector([B)V

    .line 636
    .end local v2
    :cond_0
    return-object v4

    .line 582
    .end local v10
    :cond_1
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "invalid signature for zip64 end of central directory record"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 639
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 566
    .end local v2
    :cond_2
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "invalid offset for start of end of central directory record"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 559
    .end local v0
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid zip64 end of central directory locator"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readZip64ExtendedInfo(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .locals 20
    .param p1, "extraDataRecords"    # Ljava/util/ArrayList;
    .param p2, "unCompressedSize"    # J
    .param p4, "compressedSize"    # J
    .param p6, "offsetLocalHeader"    # J
    .param p8, "diskNumberStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 729
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 788
    .end local v0
    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 730
    .restart local v0
    :cond_0
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 731
    .local v2, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    if-nez v2, :cond_1

    .line 732
    goto/16 :goto_3

    .line 735
    :cond_1
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 737
    new-instance v3, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    invoke-direct {v3}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;-><init>()V

    .line 739
    .local v3, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v4

    .line 741
    .local v4, "byteBuff":[B
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    if-gtz v5, :cond_2

    .line 742
    goto/16 :goto_2

    .line 744
    :cond_2
    const/16 v5, 0x8

    new-array v6, v5, [B

    .line 745
    .local v6, "longByteBuff":[B
    const/4 v7, 0x4

    new-array v8, v7, [B

    .line 746
    .local v8, "intByteBuff":[B
    const/4 v9, 0x0

    .line 747
    .local v9, "counter":I
    const/4 v10, 0x0

    .line 749
    .local v10, "valueAdded":Z
    const-wide/32 v11, 0xffff

    and-long v13, p2, v11

    cmp-long v13, v13, v11

    const/4 v7, 0x0

    if-nez v13, :cond_3

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v13

    if-ge v9, v13, :cond_3

    .line 750
    invoke-static {v4, v9, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    invoke-static {v6, v7}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v11

    .line 752
    .local v11, "val":J
    invoke-virtual {v3, v11, v12}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setUnCompressedSize(J)V

    .line 753
    add-int/lit8 v9, v9, 0x8

    .line 754
    const/4 v10, 0x1

    .line 757
    .end local v11
    :cond_3
    const-wide/32 v13, 0xffff

    and-long v15, p4, v13

    cmp-long v17, v15, v13

    if-nez v17, :cond_4

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v13

    if-ge v9, v13, :cond_4

    .line 758
    invoke-static {v4, v9, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    move/from16 v18, v10

    invoke-static {v6, v7}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v10

    .line 760
    .local v10, "val":J
    .local v18, "valueAdded":Z
    invoke-virtual {v3, v10, v11}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setCompressedSize(J)V

    .line 761
    add-int/lit8 v9, v9, 0x8

    .line 762
    const/4 v10, 0x1

    .line 765
    .end local v18
    .local v10, "valueAdded":Z
    move/from16 v18, v10

    goto :goto_1

    :cond_4
    move/from16 v18, v10

    .end local v10
    .restart local v18
    :goto_1
    const-wide/32 v13, 0xffff

    and-long v15, p6, v13

    cmp-long v12, v15, v13

    if-nez v12, :cond_5

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v12

    if-ge v9, v12, :cond_5

    .line 766
    invoke-static {v4, v9, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    invoke-static {v6, v7}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v10

    .line 768
    .local v10, "val":J
    invoke-virtual {v3, v10, v11}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setOffsetLocalHeader(J)V

    .line 769
    add-int/lit8 v9, v9, 0x8

    .line 770
    const/16 v18, 0x1

    .line 773
    .end local v10
    :cond_5
    const v5, 0xffff

    and-int v11, p8, v5

    if-ne v11, v5, :cond_6

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    if-ge v9, v5, :cond_6

    .line 774
    const/4 v5, 0x4

    invoke-static {v4, v9, v8, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    invoke-static {v8, v7}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v5

    .line 776
    .local v5, "val":I
    invoke-virtual {v3, v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setDiskNumberStart(I)V

    .line 777
    add-int/lit8 v9, v9, 0x8

    .line 778
    const/16 v18, 0x1

    .line 781
    .end local v5
    :cond_6
    if-eqz v18, :cond_7

    .line 782
    return-object v3

    .line 788
    .end local v0
    .end local v2
    .end local v3
    .end local v4
    .end local v6
    .end local v8
    .end local v9
    .end local v18
    :cond_7
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 729
    .restart local v0
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private setFilePointerToReadZip64EndCentralDirLoc()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 798
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    .line 799
    .local v0, "ebs":[B
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x16

    sub-long/2addr v1, v3

    .line 802
    .local v1, "pos":J
    :goto_0
    iget-object v3, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x1

    sub-long v4, v1, v4

    .local v4, "pos":J
    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 803
    .end local v1
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-static {v1, v0}, Lnet/lingala/zip4j/util/Raw;->readLeInt(Ljava/io/DataInput;[B)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v6, 0x6054b50

    cmp-long v1, v1, v6

    if-nez v1, :cond_0

    .line 814
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    sub-long/2addr v2, v6

    const-wide/16 v8, 0x8

    sub-long/2addr v2, v8

    sub-long/2addr v2, v6

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 818
    .end local v0
    .end local v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 799
    .restart local v0
    .restart local v4
    :cond_0
    move-wide v1, v4

    goto :goto_0

    .line 815
    .end local v0
    .end local v4
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public readAllHeaders(Ljava/lang/String;)Lnet/lingala/zip4j/model/ZipModel;
    .locals 2
    .param p1, "fileNameCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 76
    new-instance v0, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 77
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/ZipModel;->setFileNameCharset(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->readEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setEndCentralDirRecord(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V

    .line 82
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->readZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V

    .line 84
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->readZip64EndCentralDirRec()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirRecord(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V

    .line 86
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 94
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->readCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V

    .line 96
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object v0
.end method

.method public readLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 22
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 827
    if-eqz p1, :cond_f

    iget-object v0, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_f

    .line 831
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v2

    .line 833
    .local v2, "locHdrOffset":J
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_0

    .line 834
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    .line 835
    .local v0, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_0

    .line 836
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v2

    .line 840
    .end local v0
    :cond_0
    cmp-long v0, v2, v4

    if-ltz v0, :cond_e

    .line 845
    :try_start_0
    iget-object v0, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 847
    const/4 v0, 0x0

    .line 848
    .local v0, "length":I
    new-instance v6, Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {v6}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    .line 850
    .local v6, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    const/4 v7, 0x2

    new-array v8, v7, [B

    .line 851
    .local v8, "shortBuff":[B
    const/4 v9, 0x4

    new-array v10, v9, [B

    .line 852
    .local v10, "intBuff":[B
    const/16 v11, 0x8

    new-array v11, v11, [B

    .line 855
    .local v11, "longBuff":[B
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v10}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 856
    const/4 v12, 0x0

    invoke-static {v10, v12}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v13

    .line 857
    .local v13, "sig":I
    int-to-long v4, v13

    const-wide/32 v15, 0x4034b50

    cmp-long v4, v4, v15

    if-nez v4, :cond_d

    .line 860
    invoke-virtual {v6, v13}, Lnet/lingala/zip4j/model/LocalFileHeader;->setSignature(I)V

    .line 861
    add-int/2addr v0, v9

    .line 864
    iget-object v4, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v4, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 865
    invoke-static {v8, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v4

    invoke-virtual {v6, v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->setVersionNeededToExtract(I)V

    .line 866
    add-int/2addr v0, v7

    .line 869
    iget-object v4, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v4, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 870
    invoke-static {v8, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v4

    and-int/lit16 v4, v4, 0x800

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v12

    :goto_0
    invoke-virtual {v6, v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileNameUTF8Encoded(Z)V

    .line 871
    aget-byte v4, v8, v12

    .line 872
    .local v4, "firstByte":I
    and-int/lit8 v15, v4, 0x1

    .line 873
    .local v15, "result":I
    if-eqz v15, :cond_2

    .line 874
    invoke-virtual {v6, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncrypted(Z)V

    .line 876
    :cond_2
    invoke-virtual {v6, v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->setGeneralPurposeFlag([B)V

    .line 877
    add-int/2addr v0, v7

    .line 880
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 881
    .local v17, "binary":Ljava/lang/String;
    move-object/from16 v14, v17

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    .end local v17
    .local v14, "binary":Ljava/lang/String;
    if-lt v5, v9, :cond_4

    .line 882
    const/4 v5, 0x3

    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x31

    if-ne v5, v9, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v12

    :goto_1
    invoke-virtual {v6, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setDataDescriptorExists(Z)V

    .line 885
    :cond_4
    iget-object v5, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v5, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 886
    invoke-static {v8, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v5

    invoke-virtual {v6, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressionMethod(I)V

    .line 887
    add-int/2addr v0, v7

    .line 890
    iget-object v5, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v5, v10}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 891
    invoke-static {v10, v12}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v5

    invoke-virtual {v6, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setLastModFileTime(I)V

    .line 892
    const/4 v5, 0x4

    add-int/2addr v0, v5

    .line 895
    iget-object v5, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v5, v10}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 896
    invoke-static {v10, v12}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v5

    move-object/from16 v18, v8

    int-to-long v7, v5

    .end local v8
    .local v18, "shortBuff":[B
    invoke-virtual {v6, v7, v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc32(J)V

    .line 897
    invoke-virtual {v10}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v6, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrcBuff([B)V

    .line 898
    const/4 v5, 0x4

    add-int/2addr v0, v5

    .line 901
    iget-object v5, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v5, v10}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 902
    invoke-direct {v1, v10}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v5

    .line 903
    .end local v11
    .local v5, "longBuff":[B
    invoke-static {v5, v12}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 904
    const/4 v7, 0x4

    add-int/2addr v0, v7

    .line 907
    iget-object v7, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v7, v10}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 908
    invoke-direct {v1, v10}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v7

    move-object v5, v7

    .line 909
    invoke-static {v5, v12}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 910
    const/4 v7, 0x4

    add-int/2addr v0, v7

    .line 913
    iget-object v7, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v8, v18

    invoke-direct {v1, v7, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 914
    .end local v18
    .restart local v8
    invoke-static {v8, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v7

    .line 915
    .local v7, "fileNameLength":I
    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileNameLength(I)V

    .line 916
    const/4 v9, 0x2

    add-int/2addr v0, v9

    .line 919
    iget-object v9, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v9, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 920
    invoke-static {v8, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v9

    .line 921
    .local v9, "extraFieldLength":I
    invoke-virtual {v6, v9}, Lnet/lingala/zip4j/model/LocalFileHeader;->setExtraFieldLength(I)V

    .line 922
    const/4 v11, 0x2

    add-int/2addr v0, v11

    .line 925
    if-lez v7, :cond_7

    .line 926
    new-array v11, v7, [B

    .line 927
    .local v11, "fileNameBuf":[B
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v11}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 931
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->isFileNameUTF8Encoded()Z

    move-result v12

    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/Zip4jUtil;->decodeFileName([BZ)Ljava/lang/String;

    move-result-object v12

    .line 933
    .local v12, "fileName":Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 937
    move-object/from16 v19, v5

    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5
    .local v19, "longBuff":[B
    move-object/from16 v20, v8

    const-string v8, ":"

    .end local v8
    .local v20, "shortBuff":[B
    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v8, "file.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_5

    .line 938
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, ":"

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v8, "file.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x2

    add-int/2addr v5, v8

    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    .line 941
    :cond_5
    invoke-virtual {v6, v12}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    .line 942
    add-int/2addr v0, v7

    goto :goto_2

    .line 934
    .end local v19
    .end local v20
    .restart local v5
    .restart local v8
    :cond_6
    move-object/from16 v19, v5

    move-object/from16 v20, v8

    .end local v5
    .end local v8
    .restart local v19
    .restart local v20
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "file name is null, cannot assign file name to local file header"

    invoke-direct {v5, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 944
    .end local v11
    .end local v12
    .end local v19
    .end local v20
    .restart local v5
    .restart local v8
    :cond_7
    move-object/from16 v19, v5

    move-object/from16 v20, v8

    .end local v5
    .end local v8
    .restart local v19
    .restart local v20
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    .line 948
    :goto_2
    invoke-direct {v1, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 949
    add-int/2addr v0, v9

    .line 951
    int-to-long v11, v0

    add-long/2addr v11, v2

    invoke-virtual {v6, v11, v12}, Lnet/lingala/zip4j/model/LocalFileHeader;->setOffsetStartOfData(J)V

    .line 954
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getPassword()[C

    move-result-object v5

    invoke-virtual {v6, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setPassword([C)V

    .line 956
    invoke-direct {v1, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 958
    invoke-direct {v1, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveAESExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 960
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 962
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v5

    const/16 v8, 0x63

    if-eq v5, v8, :cond_9

    .line 965
    and-int/lit8 v5, v4, 0x40

    const/16 v8, 0x40

    if-ne v5, v8, :cond_8

    .line 967
    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V

    goto :goto_3

    .line 969
    :cond_8
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V

    .line 977
    :cond_9
    :goto_3
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCrc32()J

    move-result-wide v11

    const-wide/16 v16, 0x0

    cmp-long v5, v11, v16

    if-gtz v5, :cond_a

    .line 978
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc32(J)V

    .line 979
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getCrcBuff()[B

    move-result-object v5

    invoke-virtual {v6, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrcBuff([B)V

    .line 982
    :cond_a
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v11

    const-wide/16 v16, 0x0

    cmp-long v5, v11, v16

    if-gtz v5, :cond_b

    .line 983
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 986
    :cond_b
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v11

    const-wide/16 v16, 0x0

    cmp-long v5, v11, v16

    if-gtz v5, :cond_c

    .line 987
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 990
    :cond_c
    return-object v6

    .line 858
    .end local v4
    .end local v7
    .end local v9
    .end local v14
    .end local v15
    .end local v19
    .end local v20
    .restart local v8
    .local v11, "longBuff":[B
    :cond_d
    move-object/from16 v20, v8

    .end local v8
    .restart local v20
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "invalid local header signature for file: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 991
    .end local v0
    .end local v6
    .end local v10
    .end local v11
    .end local v13
    .end local v20
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v4, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 841
    .end local v0
    :cond_e
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "invalid local header offset"

    invoke-direct {v0, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    .end local v2
    :cond_f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid read parameters for local header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
