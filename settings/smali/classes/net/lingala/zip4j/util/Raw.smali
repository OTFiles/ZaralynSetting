.class public Lnet/lingala/zip4j/util/Raw;
.super Ljava/lang/Object;
.source "Raw.java"


# direct methods
.method public static convertCharArrayToByteArray([C)[B
    .locals 3
    .param p0, "charArray"    # [C

    .line 174
    if-eqz p0, :cond_1

    .line 178
    array-length v0, p0

    new-array v0, v0, [B

    .line 179
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 182
    .end local v1
    return-object v0

    .line 180
    .restart local v1
    :cond_0
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v0
    .end local v1
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static prepareBuffAESIVBytes([BII)V
    .locals 3
    .param p0, "buff"    # [B
    .param p1, "nonce"    # I
    .param p2, "length"    # I

    .line 150
    int-to-byte v0, p1

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    .line 151
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, p0, v2

    .line 152
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, p0, v2

    .line 153
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, p0, v2

    .line 154
    const/4 v0, 0x4

    aput-byte v1, p0, v0

    .line 155
    const/4 v0, 0x5

    aput-byte v1, p0, v0

    .line 156
    const/4 v0, 0x6

    aput-byte v1, p0, v0

    .line 157
    const/4 v0, 0x7

    aput-byte v1, p0, v0

    .line 158
    const/16 v0, 0x8

    aput-byte v1, p0, v0

    .line 159
    const/16 v0, 0x9

    aput-byte v1, p0, v0

    .line 160
    const/16 v0, 0xa

    aput-byte v1, p0, v0

    .line 161
    const/16 v0, 0xb

    aput-byte v1, p0, v0

    .line 162
    const/16 v0, 0xc

    aput-byte v1, p0, v0

    .line 163
    const/16 v0, 0xd

    aput-byte v1, p0, v0

    .line 164
    const/16 v0, 0xe

    aput-byte v1, p0, v0

    .line 165
    const/16 v0, 0xf

    aput-byte v1, p0, v0

    .line 166
    return-void
.end method

.method public static readIntLittleEndian([BI)I
    .locals 3
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 69
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 70
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    .line 69
    or-int/2addr v0, v1

    return v0
.end method

.method public static readLeInt(Ljava/io/DataInput;[B)I
    .locals 3
    .param p0, "di"    # Ljava/io/DataInput;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, p1, v1, v0}, Ljava/io/DataInput;->readFully([BII)V

    .line 52
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 53
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    .line 52
    or-int/2addr v0, v1

    return v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readLongLittleEndian([BI)J
    .locals 5
    .param p0, "array"    # [B
    .param p1, "pos"    # I

    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .local v0, "temp":J
    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 29
    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 30
    add-int/lit8 v3, p1, 0x6

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 31
    shl-long/2addr v0, v2

    .line 32
    add-int/lit8 v3, p1, 0x5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 33
    shl-long/2addr v0, v2

    .line 34
    add-int/lit8 v3, p1, 0x4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 35
    shl-long/2addr v0, v2

    .line 36
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 37
    shl-long/2addr v0, v2

    .line 38
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 39
    shl-long/2addr v0, v2

    .line 40
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 41
    shl-long/2addr v0, v2

    .line 42
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 43
    return-wide v0
.end method

.method public static final readShortBigEndian([BI)S
    .locals 2
    .param p0, "array"    # [B
    .param p1, "pos"    # I

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "temp":S
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 63
    shl-int/lit8 v1, v0, 0x8

    int-to-short v0, v1

    .line 64
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 65
    return v0
.end method

.method public static readShortLittleEndian([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 57
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method
