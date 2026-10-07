.class public Lcom/sun/mail/util/UUEncoderStream;
.super Ljava/io/FilterOutputStream;
.source "UUEncoderStream.java"


# instance fields
.field private buffer:[B

.field private bufsize:I

.field protected mode:I

.field protected name:Ljava/lang/String;

.field private wrotePrefix:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 67
    const-string v0, "encoder.buf"

    const/16 v1, 0x284

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "name"    # Ljava/lang/String;

    .line 76
    const/16 v0, 0x284

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 86
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    .line 57
    iput-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    .line 87
    iput-object p2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    .line 88
    iput p3, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    .line 89
    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    .line 90
    return-void
.end method

.method private encode()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    .line 175
    .local v0, "i":I
    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    iget v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 177
    :goto_0
    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-lt v0, v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 202
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    aget-byte v0, v1, v0

    .line 179
    .local v0, "a":B
    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-ge v2, v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    .local v3, "i":I
    aget-byte v1, v1, v2

    .line 181
    .end local v2
    .local v1, "b":B
    iget v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-ge v3, v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v4, v3, 0x1

    .local v4, "i":I
    aget-byte v2, v2, v3

    .line 188
    .end local v3
    .local v2, "c":B
    move v3, v4

    goto :goto_1

    .line 184
    .end local v2
    .end local v4
    .restart local v3
    :cond_1
    const/4 v2, 0x1

    .restart local v2
    goto :goto_1

    .line 187
    .end local v1
    .end local v3
    .local v2, "i":I
    :cond_2
    const/4 v1, 0x1

    .line 188
    .restart local v1
    const/4 v3, 0x1

    move v10, v3

    move v3, v2

    move v2, v10

    .line 191
    .local v2, "c":B
    .restart local v3
    :goto_1
    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    .line 192
    .local v4, "c1":I
    shl-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    .line 193
    .local v5, "c2":I
    shl-int/lit8 v6, v1, 0x2

    and-int/lit8 v6, v6, 0x3c

    ushr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    .line 194
    .local v6, "c3":I
    and-int/lit8 v7, v2, 0x3f

    .line 195
    .local v7, "c4":I
    iget-object v8, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v9, v4, 0x20

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 196
    iget-object v8, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v9, v5, 0x20

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 197
    iget-object v8, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v9, v6, 0x20

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 198
    iget-object v8, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v9, v7, 0x20

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 177
    .end local v0
    .end local v1
    .end local v2
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    move v0, v3

    goto :goto_0
.end method

.method private writePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 144
    .local v0, "ps":Ljava/io/PrintStream;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "begin "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    .line 148
    .end local v0
    :cond_0
    return-void
.end method

.method private writeSuffix()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    .local v0, "ps":Ljava/io/PrintStream;
    const-string v1, " \nend"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 158
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/sun/mail/util/UUEncoderStream;->flush()V

    .line 135
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 136
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-lez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V

    .line 127
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writeSuffix()V

    .line 130
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 131
    return-void
.end method

.method public setNameMode(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 98
    iput-object p1, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    .line 99
    iput p2, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    .line 100
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 117
    iget v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V

    .line 119
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    .line 122
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/UUEncoderStream;->write([BII)V

    .line 109
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 105
    .end local v0
    return-void

    .line 104
    .restart local v0
    :cond_0
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/UUEncoderStream;->write(I)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
