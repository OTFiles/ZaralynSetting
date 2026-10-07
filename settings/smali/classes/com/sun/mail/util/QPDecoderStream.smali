.class public Lcom/sun/mail/util/QPDecoderStream;
.super Ljava/io/FilterInputStream;
.source "QPDecoderStream.java"


# instance fields
.field protected ba:[B

.field protected spaces:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 64
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    .line 65
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 82
    iget v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    .line 83
    return v1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 88
    .local v0, "c":I
    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0xa

    if-ne v0, v1, :cond_4

    .line 90
    :goto_0
    iget-object v7, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    move v0, v7

    if-eq v7, v1, :cond_3

    .line 93
    if-eq v0, v3, :cond_2

    if-eq v0, v6, :cond_2

    if-ne v0, v5, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 100
    const/16 v0, 0x20

    goto :goto_2

    .line 96
    :cond_2
    :goto_1
    iput v4, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    .line 102
    :goto_2
    return v0

    .line 91
    :cond_3
    iget v7, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    goto :goto_0

    .line 104
    :cond_4
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_9

    .line 106
    iget-object v1, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 108
    .local v1, "a":I
    if-ne v1, v6, :cond_5

    .line 114
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result v2

    return v2

    .line 115
    :cond_5
    if-ne v1, v3, :cond_7

    .line 117
    iget-object v2, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 118
    .local v2, "b":I
    if-eq v2, v6, :cond_6

    .line 122
    iget-object v3, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 123
    :cond_6
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result v3

    return v3

    .line 124
    .end local v2
    :cond_7
    if-ne v1, v5, :cond_8

    .line 126
    return v5

    .line 128
    :cond_8
    iget-object v3, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    .line 129
    iget-object v3, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    iget-object v5, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    const/4 v3, 0x2

    const/16 v5, 0x10

    invoke-static {v2, v4, v3, v5}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result v2

    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 132
    :catch_0
    move-exception v2

    .line 140
    .local v2, "nex":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    iget-object v4, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    invoke-virtual {v3, v4}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 141
    return v0

    .line 145
    .end local v1
    .end local v2
    :cond_9
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

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 166
    if-nez v0, :cond_1

    .line 167
    const/4 v0, -0x1

    .line 168
    nop

    .line 172
    .end local v2
    :cond_1
    :goto_1
    return v0

    .line 170
    .restart local v2
    :cond_2
    add-int v1, p2, v0

    int-to-byte v3, v2

    aput-byte v3, p1, v1

    .line 164
    add-int/lit8 v0, v0, 0x1

    .end local v2
    goto :goto_0
.end method
