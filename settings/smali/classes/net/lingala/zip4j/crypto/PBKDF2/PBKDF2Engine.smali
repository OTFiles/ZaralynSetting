.class public Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
.super Ljava/lang/Object;
.source "PBKDF2Engine.java"


# instance fields
.field protected parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

.field protected prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .line 35
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    .line 36
    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V
    .locals 1
    .param p1, "parameters"    # Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    .line 42
    return-void
.end method


# virtual methods
.method protected INT([BII)V
    .locals 2
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "i"    # I

    .line 178
    add-int/lit8 v0, p2, 0x0

    const/high16 v1, 0x1000000

    div-int v1, p3, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 179
    add-int/lit8 v0, p2, 0x1

    const/high16 v1, 0x10000

    div-int v1, p3, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 180
    add-int/lit8 v0, p2, 0x2

    div-int/lit16 v1, p3, 0x100

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 181
    add-int/lit8 v0, p2, 0x3

    int-to-byte v1, p3

    aput-byte v1, p1, v0

    .line 182
    return-void
.end method

.method protected PBKDF2(Lnet/lingala/zip4j/crypto/PBKDF2/PRF;[BII)[B
    .locals 17
    .param p1, "prf"    # Lnet/lingala/zip4j/crypto/PBKDF2/PRF;
    .param p2, "S"    # [B
    .param p3, "c"    # I
    .param p4, "dkLen"    # I

    .line 115
    move/from16 v0, p4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 117
    new-array v2, v1, [B

    .end local p2
    .local v2, "S":[B
    goto :goto_0

    .line 119
    .end local v2
    .restart local p2
    :cond_0
    move-object/from16 v2, p2

    .end local p2
    .restart local v2
    :goto_0
    invoke-interface/range {p1 .. p1}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->getHLen()I

    move-result v10

    .line 120
    .local v10, "hLen":I
    move-object/from16 v11, p0

    invoke-virtual {v11, v0, v10}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->ceil(II)I

    move-result v12

    .line 121
    .local v12, "l":I
    add-int/lit8 v3, v12, -0x1

    mul-int/2addr v3, v10

    sub-int v13, v0, v3

    .line 122
    .local v13, "r":I
    mul-int v3, v12, v10

    new-array v14, v3, [B

    .line 123
    .local v14, "T":[B
    const/4 v3, 0x0

    .line 124
    .local v3, "ti_offset":I
    const/4 v4, 0x1

    .local v4, "i":I
    move/from16 v16, v3

    move v15, v4

    .end local v3
    .end local v4
    .local v15, "i":I
    .local v16, "ti_offset":I
    :goto_1
    if-le v15, v12, :cond_2

    .line 129
    .end local v15
    if-ge v13, v10, :cond_1

    .line 132
    new-array v3, v0, [B

    .line 133
    .local v3, "DK":[B
    invoke-static {v14, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    return-object v3

    .line 136
    .end local v3
    :cond_1
    return-object v14

    .line 126
    .restart local v15
    :cond_2
    move-object v3, v11

    move-object v4, v14

    move/from16 v5, v16

    move-object/from16 v6, p1

    move-object v7, v2

    move/from16 v8, p3

    move v9, v15

    invoke-virtual/range {v3 .. v9}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->_F([BILnet/lingala/zip4j/crypto/PBKDF2/PRF;[BII)V

    .line 127
    add-int v16, v16, v10

    .line 124
    add-int/lit8 v15, v15, 0x1

    goto :goto_1
.end method

.method protected _F([BILnet/lingala/zip4j/crypto/PBKDF2/PRF;[BII)V
    .locals 5
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "prf"    # Lnet/lingala/zip4j/crypto/PBKDF2/PRF;
    .param p4, "S"    # [B
    .param p5, "c"    # I
    .param p6, "blockIndex"    # I

    .line 152
    invoke-interface {p3}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->getHLen()I

    move-result v0

    .line 153
    .local v0, "hLen":I
    new-array v1, v0, [B

    .line 156
    .local v1, "U_r":[B
    array-length v2, p4

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 157
    .local v2, "U_i":[B
    array-length v3, p4

    const/4 v4, 0x0

    invoke-static {p4, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    array-length v3, p4

    invoke-virtual {p0, v2, v3, p6}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->INT([BII)V

    .line 160
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, p5, :cond_0

    .line 165
    .end local v3
    invoke-static {v1, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    return-void

    .line 162
    .restart local v3
    :cond_0
    invoke-interface {p3, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->doFinal([B)[B

    move-result-object v2

    .line 163
    invoke-virtual {p0, v1, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->xor([B[B)V

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected assertPRF([B)V
    .locals 2
    .param p1, "P"    # [B

    .line 101
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    invoke-virtual {v1}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    .line 105
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    invoke-interface {v0, p1}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->init([B)V

    .line 106
    return-void
.end method

.method protected ceil(II)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "m":I
    rem-int v1, p1, p2

    if-lez v1, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 146
    :cond_0
    div-int v1, p1, p2

    add-int/2addr v1, v0

    return v1
.end method

.method public deriveKey([CI)[B
    .locals 4
    .param p1, "inputPassword"    # [C
    .param p2, "dkLen"    # I

    .line 57
    nop

    .line 58
    nop

    .line 59
    if-eqz p1, :cond_1

    .line 64
    invoke-static {p1}, Lnet/lingala/zip4j/util/Raw;->convertCharArrayToByteArray([C)[B

    move-result-object v0

    .line 66
    .local v0, "P":[B
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->assertPRF([B)V

    .line 67
    if-nez p2, :cond_0

    .line 69
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    invoke-interface {v1}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->getHLen()I

    move-result p2

    .line 71
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    invoke-virtual {v2}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getSalt()[B

    move-result-object v2

    iget-object v3, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    invoke-virtual {v3}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getIterationCount()I

    move-result v3

    .line 72
    nop

    .line 71
    invoke-virtual {p0, v1, v2, v3, p2}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->PBKDF2(Lnet/lingala/zip4j/crypto/PBKDF2/PRF;[BII)[B

    move-result-object v1

    .line 73
    .local v1, "r":[B
    return-object v1

    .line 61
    .end local v0
    .end local v1
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected xor([B[B)V
    .locals 3
    .param p1, "dest"    # [B
    .param p2, "src"    # [B

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 174
    .end local v0
    return-void

    .line 172
    .restart local v0
    :cond_0
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
