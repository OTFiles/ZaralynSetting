.class public Lnet/lingala/zip4j/io/PartInputStream;
.super Lnet/lingala/zip4j/io/BaseInputStream;
.source "PartInputStream.java"


# instance fields
.field private aesBlockByte:[B

.field private aesBytesReturned:I

.field private bytesRead:J

.field private count:I

.field private decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

.field private isAESEncryptedFile:Z

.field private length:J

.field private oneByteBuff:[B

.field private raf:Ljava/io/RandomAccessFile;

.field private unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V
    .locals 4
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "start"    # J
    .param p4, "len"    # J
    .param p6, "unzipEngine"    # Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 41
    invoke-direct {p0}, Lnet/lingala/zip4j/io/BaseInputStream;-><init>()V

    .line 35
    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->oneByteBuff:[B

    .line 36
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBlockByte:[B

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    .line 38
    iput-boolean v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    .line 39
    const/4 v2, -0x1

    iput v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    .line 42
    iput-object p1, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 43
    iput-object p6, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 44
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getDecrypter()Lnet/lingala/zip4j/crypto/IDecrypter;

    move-result-object v2

    iput-object v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    .line 45
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    .line 46
    iput-wide p4, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    .line 47
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getFileHeader()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getFileHeader()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    .line 49
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 52
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    .line 53
    .local v0, "amount":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 54
    const v2, 0x7fffffff

    return v2

    .line 55
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method protected checkAndReadAESMacBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    instance-of v0, v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getStoredMac()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 134
    .local v1, "macBytes":[B
    const/4 v2, -0x1

    .line 135
    .local v2, "readLen":I
    iget-object v3, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    .line 136
    if-eq v2, v0, :cond_2

    .line 137
    iget-object v3, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    iget-object v3, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 139
    iget-object v3, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->startNextSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v3

    iput-object v3, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 140
    iget-object v3, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    sub-int/2addr v0, v2

    invoke-virtual {v3, v1, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 141
    .local v0, "newlyRead":I
    add-int/2addr v2, v0

    goto :goto_0

    .line 143
    .end local v0
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Error occured while reading stored AES authentication bytes"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getDecrypter()Lnet/lingala/zip4j/crypto/IDecrypter;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/crypto/AESDecrypter;->setStoredMac([B)V

    .line 150
    .end local v1
    .end local v2
    :cond_3
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 163
    return-void
.end method

.method public getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;
    .locals 1

    .line 170
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    return-object v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    .line 60
    return v1

    .line 62
    :cond_0
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 63
    iget v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_3

    .line 64
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBlockByte:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/PartInputStream;->read([B)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 65
    return v1

    .line 67
    :cond_2
    iput v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    .line 69
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBlockByte:[B

    iget v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 71
    :cond_4
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->oneByteBuff:[B

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->oneByteBuff:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    int-to-long v0, p3

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    iget-wide v4, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 81
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 82
    if-nez p3, :cond_0

    .line 83
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/PartInputStream;->checkAndReadAESMacBytes()V

    .line 84
    const/4 v0, -0x1

    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getDecrypter()Lnet/lingala/zip4j/crypto/IDecrypter;

    move-result-object v0

    instance-of v0, v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v0, :cond_1

    .line 89
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 90
    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    .line 91
    rem-int/lit8 v0, p3, 0x10

    sub-int/2addr p3, v0

    .line 96
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    iput v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    .line 98
    iget v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    if-ge v1, p3, :cond_3

    iget-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 100
    iget-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->startNextSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 101
    iget v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    if-gez v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    .line 102
    :cond_2
    iget-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    iget v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    iget v3, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    sub-int v3, p3, v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 103
    .local v1, "newlyRead":I
    if-lez v1, :cond_3

    .line 104
    iget v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    add-int/2addr v2, v1

    iput v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    .line 96
    .end local v1
    :cond_3
    monitor-exit v0

    .line 108
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    if-lez v0, :cond_5

    .line 109
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    if-eqz v0, :cond_4

    .line 111
    :try_start_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    iget v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    invoke-interface {v0, p1, p2, v1}, Lnet/lingala/zip4j/crypto/IDecrypter;->decryptData([BII)I

    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lnet/lingala/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    .end local v0
    :cond_4
    :goto_0
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    iget v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    .line 119
    :cond_5
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 120
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/PartInputStream;->checkAndReadAESMacBytes()V

    .line 123
    :cond_6
    iget v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    return v0

    .line 96
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public skip(J)J
    .locals 4
    .param p1, "amount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 155
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 156
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    sub-long p1, v0, v2

    .line 157
    :cond_0
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    .line 158
    return-wide p1

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
