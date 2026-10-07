.class public Lcom/sun/mail/util/QPEncoderStream;
.super Ljava/io/FilterOutputStream;
.source "QPEncoderStream.java"


# static fields
.field private static final hex:[C


# instance fields
.field private bytesPerLine:I

.field private count:I

.field private gotCR:Z

.field private gotSpace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 171
    nop

    .line 172
    nop

    .line 170
    sput-object v0, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    .line 54
    return-void

    :array_0
    .array-data 2
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
        0x41S    # 'A'
        0x42S    # 'B'
        0x43S    # 'C'
        0x44S    # 'D'
        0x45S    # 'E'
        0x46S    # 'F'
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 80
    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bytesPerLine"    # I

    .line 68
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 57
    iput-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 58
    iput-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    .line 71
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    .line 72
    return-void
.end method

.method private outputCRLF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 165
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 167
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

    .line 160
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 161
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 153
    return-void
.end method

.method protected output(IZ)V
    .locals 6
    .param p1, "c"    # I
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const/16 v0, 0xa

    const/16 v1, 0xd

    const/16 v2, 0x3d

    if-eqz p2, :cond_1

    .line 177
    iget v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    const/4 v4, 0x3

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v5, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le v3, v5, :cond_0

    .line 178
    iget-object v3, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 179
    iget-object v3, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 180
    iget-object v1, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 181
    iput v4, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 184
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 185
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 187
    :cond_1
    iget v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v5, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le v3, v5, :cond_2

    .line 188
    iget-object v3, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 189
    iget-object v2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 190
    iget-object v1, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 191
    iput v4, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 195
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    and-int/lit16 p1, p1, 0xff

    .line 114
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    const/16 v1, 0xa

    const/16 v2, 0xd

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x20

    if-eqz v0, :cond_2

    .line 115
    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0, v5, v4}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_1

    .line 117
    :cond_1
    :goto_0
    invoke-virtual {p0, v5, v3}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    .line 120
    :goto_1
    iput-boolean v4, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 123
    :cond_2
    if-ne p1, v2, :cond_3

    .line 124
    iput-boolean v3, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    .line 125
    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    goto :goto_4

    .line 127
    :cond_3
    if-ne p1, v1, :cond_5

    .line 128
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    if-eqz v0, :cond_4

    goto :goto_3

    .line 133
    :cond_4
    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    goto :goto_3

    .line 134
    :cond_5
    if-ne p1, v5, :cond_6

    .line 135
    iput-boolean v3, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    goto :goto_3

    .line 136
    :cond_6
    if-lt p1, v5, :cond_8

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_8

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_7

    goto :goto_2

    .line 140
    :cond_7
    invoke-virtual {p0, p1, v4}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_3

    .line 138
    :cond_8
    :goto_2
    invoke-virtual {p0, p1, v3}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    .line 142
    :goto_3
    iput-boolean v4, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    .line 144
    :goto_4
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/QPEncoderStream;->write([BII)V

    .line 105
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

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 96
    .end local v0
    return-void

    .line 95
    .restart local v0
    :cond_0
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/QPEncoderStream;->write(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
