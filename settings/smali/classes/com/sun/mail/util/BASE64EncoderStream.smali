.class public Lcom/sun/mail/util/BASE64EncoderStream;
.super Ljava/io/FilterOutputStream;
.source "BASE64EncoderStream.java"


# static fields
.field private static newline:[B

.field private static final pem_array:[C


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private bytesPerLine:I

.field private count:I

.field private lineLimit:I

.field private noCRLF:Z

.field private outbuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    .line 210
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    .line 211
    nop

    .line 212
    nop

    .line 213
    nop

    .line 214
    nop

    .line 215
    nop

    .line 216
    nop

    .line 217
    nop

    .line 218
    nop

    .line 210
    sput-object v0, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    .line 55
    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 2
        0x41S    # 'A'
        0x42S    # 'B'
        0x43S    # 'C'
        0x44S    # 'D'
        0x45S    # 'E'
        0x46S    # 'F'
        0x47S    # 'G'
        0x48S    # 'H'
        0x49S    # 'I'
        0x4aS    # 'J'
        0x4bS    # 'K'
        0x4cS    # 'L'
        0x4dS    # 'M'
        0x4eS    # 'N'
        0x4fS    # 'O'
        0x50S    # 'P'
        0x51S    # 'Q'
        0x52S    # 'R'
        0x53S    # 'S'
        0x54S    # 'T'
        0x55S    # 'U'
        0x56S    # 'V'
        0x57S    # 'W'
        0x58S    # 'X'
        0x59S    # 'Y'
        0x5aS    # 'Z'
        0x61S    # 'a'
        0x62S    # 'b'
        0x63S    # 'c'
        0x64S    # 'd'
        0x65S    # 'e'
        0x66S    # 'f'
        0x67S    # 'g'
        0x68S    # 'h'
        0x69S    # 'i'
        0x6aS    # 'j'
        0x6bS    # 'k'
        0x6cS    # 'l'
        0x6dS    # 'm'
        0x6eS    # 'n'
        0x6fS    # 'o'
        0x70S    # 'p'
        0x71S    # 'q'
        0x72S    # 'r'
        0x73S    # 's'
        0x74S    # 't'
        0x75S    # 'u'
        0x76S    # 'v'
        0x77S    # 'w'
        0x78S    # 'x'
        0x79S    # 'y'
        0x7aS    # 'z'
        0x30S    # '0'
        0x31S    # '1'
        0x32S    # '2'
        0x33S    # '3'
        0x34S    # '4'
        0x35S    # '5'
        0x36S    # '6'
        0x37S    # '7'
        0x38S    # '8'
        0x39S    # '9'
        0x2bS    # '+'
        0x2fS    # '/'
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 103
    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bytesPerLine"    # I

    .line 77
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    .line 59
    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 62
    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    .line 78
    const/4 v0, 0x3

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    .line 79
    const/4 v1, 0x4

    const v2, 0x7fffffff

    if-eq p2, v2, :cond_0

    if-ge p2, v1, :cond_1

    .line 80
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    .line 81
    const/16 p2, 0x4c

    .line 83
    :cond_1
    div-int/lit8 v2, p2, 0x4

    mul-int/2addr v2, v1

    .line 84
    .end local p2
    .local v2, "bytesPerLine":I
    iput v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    .line 85
    div-int/lit8 p2, v2, 0x4

    mul-int/2addr p2, v0

    iput p2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    .line 87
    iget-boolean p2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-eqz p2, :cond_2

    .line 88
    new-array p2, v2, [B

    iput-object p2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    goto :goto_0

    .line 90
    :cond_2
    add-int/lit8 p2, v2, 0x2

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    .line 91
    iget-object p2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    const/16 v0, 0xd

    aput-byte v0, p2, v2

    .line 92
    iget-object p2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0xa

    aput-byte v1, p2, v0

    .line 94
    :goto_0
    return-void
.end method

.method private encode()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    invoke-static {v0}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v0

    .line 230
    .local v0, "osize":I
    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    iget v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 232
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 235
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    iget v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    if-lt v1, v2, :cond_1

    .line 236
    iget-boolean v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 238
    :cond_0
    iput v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 240
    :cond_1
    return-void
.end method

.method public static encode([B)[B
    .locals 3
    .param p0, "inbuf"    # [B

    .line 249
    array-length v0, p0

    if-nez v0, :cond_0

    .line 250
    return-object p0

    .line 251
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static encode([BII[B)[B
    .locals 6
    .param p0, "inbuf"    # [B
    .param p1, "off"    # I
    .param p2, "size"    # I
    .param p3, "outbuf"    # [B

    .line 261
    if-nez p3, :cond_0

    .line 262
    invoke-static {p2}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v0

    new-array p3, v0, [B

    .line 265
    :cond_0
    move v0, p1

    .local v0, "inpos":I
    const/4 v1, 0x0

    .local v1, "outpos":I
    :goto_0
    const/4 v2, 0x3

    if-ge p2, v2, :cond_3

    .line 280
    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 281
    add-int/lit8 v3, v0, 0x1

    .local v3, "inpos":I
    aget-byte v0, p0, v0

    .end local v0
    and-int/lit16 v0, v0, 0xff

    .line 282
    .local v0, "val":I
    shl-int/lit8 v0, v0, 0x4

    .line 283
    add-int/lit8 v4, v1, 0x3

    aput-byte v2, p3, v4

    .line 284
    add-int/lit8 v4, v1, 0x2

    aput-byte v2, p3, v4

    .line 285
    add-int/lit8 v2, v1, 0x1

    sget-object v4, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v5, v0, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    .line 286
    shr-int/lit8 v0, v0, 0x6

    .line 287
    add-int/lit8 v2, v1, 0x0

    sget-object v4, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v5, v0, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    .line 300
    move v0, v3

    goto :goto_1

    .line 288
    .end local v3
    .local v0, "inpos":I
    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 289
    add-int/lit8 v4, v0, 0x1

    .local v4, "inpos":I
    aget-byte v0, p0, v0

    .end local v0
    and-int/lit16 v0, v0, 0xff

    .line 290
    .local v0, "val":I
    shl-int/lit8 v0, v0, 0x8

    .line 291
    add-int/lit8 v5, v4, 0x1

    .local v5, "inpos":I
    aget-byte v4, p0, v4

    .end local v4
    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    .line 292
    shl-int/2addr v0, v3

    .line 293
    add-int/lit8 v3, v1, 0x3

    aput-byte v2, p3, v3

    .line 294
    add-int/lit8 v2, v1, 0x2

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v4, v0, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 295
    shr-int/lit8 v0, v0, 0x6

    .line 296
    add-int/lit8 v2, v1, 0x1

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v4, v0, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 297
    shr-int/lit8 v0, v0, 0x6

    .line 298
    add-int/lit8 v2, v1, 0x0

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v4, v0, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 300
    .end local v0
    move v0, v5

    .end local v5
    .local v0, "inpos":I
    :cond_2
    :goto_1
    return-object p3

    .line 266
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .local v2, "inpos":I
    aget-byte v0, p0, v0

    .end local v0
    and-int/lit16 v0, v0, 0xff

    .line 267
    .local v0, "val":I
    shl-int/lit8 v0, v0, 0x8

    .line 268
    add-int/lit8 v3, v2, 0x1

    .restart local v3
    aget-byte v2, p0, v2

    .end local v2
    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 269
    shl-int/lit8 v0, v0, 0x8

    .line 270
    add-int/lit8 v2, v3, 0x1

    .restart local v2
    aget-byte v3, p0, v3

    .end local v3
    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 271
    add-int/lit8 v3, v1, 0x3

    sget-object v4, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v5, v0, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 272
    shr-int/lit8 v0, v0, 0x6

    .line 273
    add-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v5, v0, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 274
    shr-int/lit8 v0, v0, 0x6

    .line 275
    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v5, v0, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 276
    shr-int/lit8 v0, v0, 0x6

    .line 277
    add-int/lit8 v3, v1, 0x0

    sget-object v4, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v5, v0, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 265
    add-int/lit8 p2, p2, -0x3

    add-int/lit8 v1, v1, 0x4

    .end local v0
    move v0, v2

    goto/16 :goto_0
.end method

.method private static encodedSize(I)I
    .locals 1
    .param p0, "size"    # I

    .line 308
    add-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->flush()V

    .line 202
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 204
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 207
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 189
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    if-lez v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode()V

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 194
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 176
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    .line 180
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 174
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/BASE64EncoderStream;->write([BII)V

    .line 166
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 118
    add-int v0, p2, p3

    .line 121
    .local v0, "end":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    if-eqz v1, :cond_1

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .local v1, "off":I
    aget-byte p2, p1, p2

    .end local p2
    invoke-virtual {p0, p2}, Lcom/sun/mail/util/BASE64EncoderStream;->write(I)V

    .line 121
    move p2, v1

    goto :goto_0

    .line 125
    .end local v1
    .restart local p2
    :cond_1
    :goto_1
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    iget v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    .line 126
    .local v1, "blen":I
    add-int v2, p2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_3

    .line 128
    invoke-static {v1}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v2

    .line 129
    .local v2, "outlen":I
    iget-boolean v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v4, :cond_2

    .line 130
    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    add-int/lit8 v5, v2, 0x1

    .local v5, "outlen":I
    const/16 v6, 0xd

    aput-byte v6, v4, v2

    .line 131
    .end local v2
    iget-object v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    add-int/lit8 v4, v5, 0x1

    .local v4, "outlen":I
    const/16 v6, 0xa

    aput-byte v6, v2, v5

    .line 133
    .end local v5
    move v2, v4

    .end local v4
    .restart local v2
    :cond_2
    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, p2, v1, v5}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v5

    invoke-virtual {v4, v5, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 134
    add-int/2addr p2, v1

    .line 135
    iput v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 139
    .end local v2
    :cond_3
    :goto_2
    iget v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    add-int/2addr v2, p2

    if-lt v2, v0, :cond_6

    .line 143
    add-int/lit8 v2, p2, 0x3

    if-ge v2, v0, :cond_4

    .line 144
    sub-int v1, v0, p2

    .line 145
    div-int/lit8 v2, v1, 0x3

    mul-int/lit8 v1, v2, 0x3

    .line 147
    invoke-static {v1}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v2

    .line 148
    .restart local v2
    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, p2, v1, v5}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v5

    invoke-virtual {v4, v5, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 149
    add-int/2addr p2, v1

    .line 150
    iget v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 154
    .end local v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    if-lt p2, v0, :cond_5

    .line 156
    monitor-exit p0

    return-void

    .line 155
    :cond_5
    :try_start_1
    aget-byte v2, p1, p2

    invoke-virtual {p0, v2}, Lcom/sun/mail/util/BASE64EncoderStream;->write(I)V

    .line 154
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 140
    :cond_6
    iget-object v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, p2, v4, v5}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 139
    iget v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr p2, v2

    goto :goto_2

    .line 117
    .end local v0
    .end local v1
    .end local p1
    .end local p2
    .end local p3
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method
