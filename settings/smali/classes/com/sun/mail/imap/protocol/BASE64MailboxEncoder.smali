.class public Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;
.super Ljava/lang/Object;
.source "BASE64MailboxEncoder.java"


# static fields
.field private static final pem_array:[C


# instance fields
.field protected buffer:[B

.field protected bufsize:I

.field protected out:Ljava/io/Writer;

.field protected started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 251
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 252
    nop

    .line 253
    nop

    .line 254
    nop

    .line 255
    nop

    .line 256
    nop

    .line 257
    nop

    .line 258
    nop

    .line 259
    nop

    .line 251
    sput-object v0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    .line 110
    return-void

    :array_0
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
        0x2cS    # ','
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "what"    # Ljava/io/Writer;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    .line 113
    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    .line 175
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    .line 176
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "original"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "base64stream":Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 120
    .local v1, "origchars":[C
    array-length v2, v1

    .line 121
    .local v2, "length":I
    const/4 v3, 0x0

    .line 122
    .local v3, "changedString":Z
    new-instance v4, Ljava/io/CharArrayWriter;

    invoke-direct {v4, v2}, Ljava/io/CharArrayWriter;-><init>(I)V

    .line 125
    .local v4, "writer":Ljava/io/CharArrayWriter;
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-lt v5, v2, :cond_2

    .line 159
    .end local v5
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->flush()V

    .line 163
    :cond_0
    if-eqz v3, :cond_1

    .line 164
    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 166
    :cond_1
    return-object p0

    .line 126
    .restart local v5
    :cond_2
    aget-char v6, v1, v5

    .line 130
    .local v6, "current":C
    const/16 v7, 0x20

    if-lt v6, v7, :cond_5

    const/16 v7, 0x7e

    if-gt v6, v7, :cond_5

    .line 131
    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->flush()V

    .line 135
    :cond_3
    const/16 v7, 0x26

    if-ne v6, v7, :cond_4

    .line 136
    const/4 v3, 0x1

    .line 137
    invoke-virtual {v4, v7}, Ljava/io/CharArrayWriter;->write(I)V

    .line 138
    const/16 v7, 0x2d

    invoke-virtual {v4, v7}, Ljava/io/CharArrayWriter;->write(I)V

    goto :goto_1

    .line 140
    :cond_4
    invoke-virtual {v4, v6}, Ljava/io/CharArrayWriter;->write(I)V

    goto :goto_1

    .line 149
    :cond_5
    if-nez v0, :cond_6

    .line 150
    new-instance v7, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;

    invoke-direct {v7, v4}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;-><init>(Ljava/io/Writer;)V

    move-object v0, v7

    .line 151
    const/4 v3, 0x1

    .line 154
    :cond_6
    invoke-virtual {v0, v6}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->write(I)V

    .line 125
    .end local v6
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected encode()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v0, v0, v2

    .line 223
    .local v0, "a":B
    const/4 v1, 0x0

    .line 224
    .local v1, "b":B
    const/4 v2, 0x0

    .line 225
    .local v2, "c":B
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 226
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    add-int/2addr v5, v6

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_0

    .line 228
    .end local v0
    .end local v1
    .end local v2
    :cond_0
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 229
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v0, v0, v2

    .line 230
    .restart local v0
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v1, v2, v1

    .line 231
    .restart local v1
    const/4 v2, 0x0

    .line 232
    .restart local v2
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v5, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 233
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v5, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0x30

    ushr-int/lit8 v7, v1, 0x4

    and-int/lit8 v7, v7, 0xf

    add-int/2addr v6, v7

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 234
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v5, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/lit8 v6, v1, 0x2

    and-int/lit8 v6, v6, 0x3c

    ushr-int/lit8 v7, v2, 0x6

    and-int/2addr v3, v7

    add-int/2addr v6, v3

    aget-char v3, v5, v6

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 237
    .end local v0
    .end local v1
    .end local v2
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v0, v0, v2

    .line 238
    .restart local v0
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v1, v5, v1

    .line 239
    .restart local v1
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v4, v5, v4

    .line 240
    .local v4, "c":B
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v6, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v7, v0, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 241
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v6, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0x30

    ushr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    add-int/2addr v7, v8

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 242
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v6, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/lit8 v7, v1, 0x2

    and-int/lit8 v7, v7, 0x3c

    ushr-int/lit8 v8, v4, 0x6

    and-int/2addr v8, v3

    add-int/2addr v7, v8

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 243
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v6, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    and-int/lit8 v7, v4, 0x3f

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(I)V

    .line 246
    iget v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 247
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    iget-object v6, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v3, v6, v3

    aput-byte v3, v5, v2

    .line 249
    :cond_2
    move v2, v4

    .end local v4
    .restart local v2
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 3

    .line 203
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode()V

    .line 205
    iput v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 211
    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 216
    :cond_1
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "c"    # I

    .line 181
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    .line 183
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 188
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 190
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode()V

    .line 192
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 197
    :cond_1
    :goto_0
    return-void
.end method
