.class public Lcom/sun/mail/util/UUDecoderStream;
.super Ljava/io/FilterInputStream;
.source "UUDecoderStream.java"


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private gotEnd:Z

.field private gotPrefix:Z

.field private index:I

.field private lin:Lcom/sun/mail/util/LineInputStream;

.field private mode:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 71
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 61
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 62
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 63
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 72
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    .line 73
    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    .line 74
    return-void
.end method

.method private decode()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 178
    return v1

    .line 179
    :cond_0
    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 191
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "end"

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    iput-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 193
    return v1

    .line 195
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 197
    .local v2, "count":I
    const/16 v4, 0x20

    if-lt v2, v4, :cond_9

    .line 206
    add-int/lit8 v5, v2, -0x20

    and-int/lit8 v2, v5, 0x3f

    .line 208
    if-nez v2, :cond_4

    .line 209
    iget-object v4, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v4}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "end"

    const/4 v9, 0x0

    const/4 v10, 0x3

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 212
    iput-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 213
    return v1

    .line 211
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Missing End"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_4
    mul-int/lit8 v1, v2, 0x8

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x6

    .line 218
    .local v1, "need":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    if-lt v5, v6, :cond_8

    .line 221
    const/4 v5, 0x1

    .line 229
    .local v5, "i":I
    :goto_0
    iget v6, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-lt v6, v2, :cond_5

    .line 248
    return v3

    .line 231
    :cond_5
    add-int/lit8 v6, v5, 0x1

    .local v6, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .end local v5
    sub-int/2addr v5, v4

    and-int/lit8 v5, v5, 0x3f

    int-to-byte v5, v5

    .line 232
    .local v5, "a":B
    add-int/lit8 v7, v6, 0x1

    .local v7, "i":I
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .end local v6
    sub-int/2addr v6, v4

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    .line 233
    .local v6, "b":B
    iget-object v8, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v10, v5, 0x2

    and-int/lit16 v10, v10, 0xfc

    ushr-int/lit8 v11, v6, 0x4

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 235
    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v8, v2, :cond_6

    .line 236
    move v5, v6

    .line 237
    add-int/lit8 v8, v7, 0x1

    .local v8, "i":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .end local v7
    sub-int/2addr v7, v4

    and-int/lit8 v7, v7, 0x3f

    int-to-byte v6, v7

    .line 238
    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 239
    shl-int/lit8 v10, v5, 0x4

    and-int/lit16 v10, v10, 0xf0

    ushr-int/lit8 v11, v6, 0x2

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    int-to-byte v10, v10

    .line 238
    aput-byte v10, v7, v9

    .line 242
    move v7, v8

    .end local v8
    .restart local v7
    :cond_6
    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v8, v2, :cond_7

    .line 243
    move v5, v6

    .line 244
    add-int/lit8 v8, v7, 0x1

    .restart local v8
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .end local v7
    sub-int/2addr v7, v4

    and-int/lit8 v7, v7, 0x3f

    int-to-byte v6, v7

    .line 245
    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v10, v5, 0x6

    and-int/lit16 v10, v10, 0xc0

    and-int/lit8 v11, v6, 0x3f

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 229
    .end local v5
    .end local v6
    move v5, v8

    goto :goto_0

    .end local v8
    .restart local v7
    :cond_7
    move v5, v7

    goto :goto_0

    .line 219
    .end local v7
    :cond_8
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Short buffer error"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    .end local v1
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Buffer format error"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    .end local v2
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing End"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readPrefix()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    if-eqz v0, :cond_0

    .line 154
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 162
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "begin"

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v1, 0x6

    const/16 v2, 0x9

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I

    .line 168
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 170
    return-void

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UUDecoder error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    .end local v1
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "UUDecoder error: No Begin"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 144
    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 132
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    return-object v0
.end method

.method public markSupported()Z
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-lt v0, v1, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 93
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->decode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, -0x1

    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/util/UUDecoderStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 104
    if-nez v0, :cond_1

    .line 105
    const/4 v0, -0x1

    .line 106
    nop

    .line 110
    .end local v2
    :cond_1
    :goto_1
    return v0

    .line 108
    .restart local v2
    :cond_2
    add-int v1, p2, v0

    int-to-byte v3, v2

    aput-byte v3, p1, v1

    .line 102
    add-int/lit8 v0, v0, 0x1

    .end local v2
    goto :goto_0
.end method
