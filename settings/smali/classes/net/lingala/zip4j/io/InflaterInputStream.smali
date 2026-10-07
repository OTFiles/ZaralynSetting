.class public Lnet/lingala/zip4j/io/InflaterInputStream;
.super Lnet/lingala/zip4j/io/PartInputStream;
.source "InflaterInputStream.java"


# instance fields
.field private buff:[B

.field private bytesWritten:J

.field private inflater:Ljava/util/zip/Inflater;

.field private oneByteBuff:[B

.field private uncompressedSize:J

.field private unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V
    .locals 2
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "start"    # J
    .param p4, "len"    # J
    .param p6, "unzipEngine"    # Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 39
    invoke-direct/range {p0 .. p6}, Lnet/lingala/zip4j/io/PartInputStream;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V

    .line 33
    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->oneByteBuff:[B

    .line 40
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 41
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->buff:[B

    .line 42
    iput-object p6, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->bytesWritten:J

    .line 44
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getFileHeader()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->uncompressedSize:J

    .line 45
    return-void
.end method

.method private fill()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->buff:[B

    iget-object v1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->buff:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result v0

    .line 113
    .local v0, "len":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->buff:[B

    invoke-virtual {v1, v3, v2, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 117
    return-void

    .line 114
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Unexpected end of ZLIB input stream"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private finishInflating()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 105
    .local v1, "b":[B
    :cond_0
    const/4 v2, 0x0

    invoke-super {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 108
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/InflaterInputStream;->checkAndReadAESMacBytes()V

    .line 109
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 163
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 168
    invoke-super {p0}, Lnet/lingala/zip4j/io/PartInputStream;->close()V

    .line 169
    return-void
.end method

.method public getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;
    .locals 1

    .line 172
    invoke-super {p0}, Lnet/lingala/zip4j/io/PartInputStream;->getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-result-object v0

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->oneByteBuff:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lnet/lingala/zip4j/io/InflaterInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->oneByteBuff:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :goto_0
    return v2
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    if-eqz p1, :cond_0

    .line 56
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/InflaterInputStream;->read([BII)I

    move-result v0

    return v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    if-eqz p1, :cond_8

    .line 63
    if-ltz p2, :cond_7

    if-ltz p3, :cond_7

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_7

    .line 65
    if-nez p3, :cond_0

    .line 66
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->bytesWritten:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->uncompressedSize:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_1

    .line 72
    invoke-direct {p0}, Lnet/lingala/zip4j/io/InflaterInputStream;->finishInflating()V

    .line 73
    return v1

    .line 75
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    move v2, v0

    .local v2, "n":I
    if-eqz v0, :cond_2

    .line 84
    iget-wide v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->bytesWritten:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->bytesWritten:J

    .line 85
    return v2

    .line 73
    :cond_2
    nop

    .line 76
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 80
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-direct {p0}, Lnet/lingala/zip4j/io/InflaterInputStream;->fill()V

    .end local v2
    goto :goto_0

    .line 77
    .restart local v2
    :cond_4
    :goto_1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/InflaterInputStream;->finishInflating()V

    .line 78
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 86
    .end local v2
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/util/zip/DataFormatException;
    const-string v1, "Invalid ZLIB data format"

    .line 88
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 89
    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_5
    iget-object v2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    if-eqz v2, :cond_6

    .line 92
    iget-object v2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v2}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getLocalFileHeader()Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 93
    iget-object v2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v2}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getLocalFileHeader()Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v2

    if-nez v2, :cond_6

    .line 94
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, " - Wrong Password?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_6
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    .end local v0
    .end local v1
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 62
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 130
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 131
    .local v0, "max":I
    const/4 v1, 0x0

    .line 132
    .local v1, "total":I
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 133
    .local v2, "b":[B
    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    sub-int v3, v0, v1

    .line 135
    .local v3, "len":I
    array-length v4, v2

    if-le v3, v4, :cond_1

    .line 136
    array-length v3, v2

    .line 138
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lnet/lingala/zip4j/io/InflaterInputStream;->read([BII)I

    move-result v3

    .line 139
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 140
    nop

    .line 144
    .end local v3
    :goto_1
    int-to-long v3, v1

    return-wide v3

    .line 142
    .restart local v3
    :cond_2
    add-int/2addr v1, v3

    .end local v3
    goto :goto_0

    .line 128
    .end local v0
    .end local v1
    .end local v2
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative skip length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
