.class public Lnet/lingala/zip4j/crypto/StandardDecrypter;
.super Ljava/lang/Object;
.source "StandardDecrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IDecrypter;


# instance fields
.field private crc:[B

.field private fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field private zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/FileHeader;[B)V
    .locals 2
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "headerBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    .line 32
    if-eqz p1, :cond_0

    .line 36
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    .line 37
    new-instance v0, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-direct {v0}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    .line 38
    invoke-virtual {p0, p2}, Lnet/lingala/zip4j/crypto/StandardDecrypter;->init([B)V

    .line 39
    return-void

    .line 33
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "one of more of the input parameters were null in StandardDecryptor"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decryptData([BII)I
    .locals 4
    .param p1, "buff"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 46
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 51
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    .line 57
    .end local v0
    return p3

    .line 52
    .restart local v0
    :cond_0
    :try_start_0
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 53
    .local v1, "val":I
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v2}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->decryptByte()B

    move-result v2

    xor-int/2addr v2, v1

    and-int/lit16 v1, v2, 0xff

    .line 54
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    int-to-byte v3, v1

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->updateKeys(B)V

    .line 55
    int-to-byte v2, v1

    aput-byte v2, p1, v0

    .line 51
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 47
    .end local v0
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "one of the input parameters were null in standard decrpyt data"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init([B)V
    .locals 6
    .param p1, "headerBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getCrcBuff()[B

    move-result-object v0

    .line 65
    .local v0, "crcBuff":[B
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    const/4 v2, 0x3

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 66
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    aget-byte v3, v0, v2

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    .line 67
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    aget-byte v3, v0, v2

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v1, v5

    .line 68
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    aget-byte v2, v0, v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 70
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    aget-byte v1, v1, v4

    if-gtz v1, :cond_3

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    aget-byte v1, v1, v5

    if-gtz v1, :cond_3

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    aget-byte v1, v1, v3

    if-gtz v1, :cond_3

    .line 73
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getPassword()[C

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getPassword()[C

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    .line 77
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getPassword()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->initKeys([C)V

    .line 80
    :try_start_0
    aget-byte v1, p1, v3

    .line 81
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    .line 95
    .end local v1
    .end local v2
    return-void

    .line 88
    .restart local v1
    .restart local v2
    :cond_0
    iget-object v4, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    iget-object v5, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->decryptByte()B

    move-result v5

    xor-int/2addr v5, v1

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->updateKeys(B)V

    .line 89
    add-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_1

    .line 90
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p1, v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 81
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v1
    .end local v2
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 74
    .end local v1
    :cond_2
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const/4 v2, 0x5

    const-string v3, "Wrong password!"

    invoke-direct {v1, v3, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 71
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid CRC in File Header"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
