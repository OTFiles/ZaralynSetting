.class public Ljavax/mail/util/SharedFileInputStream;
.super Ljava/io/BufferedInputStream;
.source "SharedFileInputStream.java"

# interfaces
.implements Ljavax/mail/internet/SharedInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/util/SharedFileInputStream$SharedFile;
    }
.end annotation


# static fields
.field private static defaultBufferSize:I


# instance fields
.field protected bufpos:J

.field protected bufsize:I

.field protected datalen:J

.field protected in:Ljava/io/RandomAccessFile;

.field private master:Z

.field private sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

.field protected start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const/16 v0, 0x800

    sput v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    sget v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/io/File;I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 192
    if-lez p2, :cond_0

    .line 194
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    .line 195
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    sget v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/lang/String;I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 207
    if-lez p2, :cond_0

    .line 209
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    .line 210
    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V
    .locals 2
    .param p1, "sf"    # Ljavax/mail/util/SharedFileInputStream$SharedFile;
    .param p2, "start"    # J
    .param p4, "len"    # J
    .param p6, "bufsize"    # I

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 228
    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 229
    invoke-virtual {p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->open()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 230
    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 231
    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 232
    iput-wide p4, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 233
    iput p6, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 234
    new-array v0, p6, [B

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 235
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 160
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fill()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 246
    iput v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 247
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    goto :goto_0

    .line 248
    :cond_0
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v2, v2

    if-lt v0, v2, :cond_4

    .line 249
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-lez v0, :cond_1

    .line 250
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    sub-int/2addr v0, v2

    .line 251
    .local v0, "sz":I
    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iget-object v4, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 253
    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 254
    iput v1, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    goto :goto_0

    .line 255
    .end local v0
    :cond_1
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v0, v0

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-lt v0, v2, :cond_2

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    .line 257
    iput v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 258
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    goto :goto_0

    .line 260
    :cond_2
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    mul-int/lit8 v0, v0, 0x2

    .line 261
    .local v0, "nsz":I
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-le v0, v2, :cond_3

    .line 262
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    .line 263
    :cond_3
    new-array v2, v0, [B

    .line 264
    .local v2, "nbuf":[B
    iget-object v3, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iput-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 267
    .end local v0
    .end local v2
    :cond_4
    :goto_0
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    .line 268
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 270
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 271
    .local v0, "len":I
    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v3, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v1, v3

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-wide v3, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 272
    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    iget-wide v3, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v5, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v3, v5

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 273
    :cond_5
    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 274
    .local v1, "n":I
    if-lez v1, :cond_6

    .line 275
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    .line 276
    :cond_6
    return-void
.end method

.method private in_available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V
    .locals 2
    .param p1, "sf"    # Ljavax/mail/util/SharedFileInputStream$SharedFile;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 214
    invoke-virtual {p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->open()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 216
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 217
    iput p2, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 218
    new-array v0, p2, [B

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 219
    return-void
.end method

.method private read1([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 302
    .local v0, "avail":I
    if-gtz v0, :cond_1

    .line 313
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 314
    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v1, v2

    .line 315
    .end local v0
    .local v1, "avail":I
    if-gtz v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 317
    :cond_0
    move v0, v1

    .end local v1
    .restart local v0
    :cond_1
    if-ge v0, p3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, p3

    .line 318
    .local v1, "cnt":I
    :goto_0
    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 320
    return v1
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 401
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 402
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->in_available()I

    move-result v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 467
    return-void

    .line 469
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->forceClose()V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->close()V

    .line 474
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 475
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 476
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 478
    return-void

    .line 473
    :catchall_0
    move-exception v1

    .line 474
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 475
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 476
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 477
    throw v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 538
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 539
    invoke-virtual {p0}, Ljavax/mail/util/SharedFileInputStream;->close()V

    .line 540
    return-void
.end method

.method public getPosition()J
    .locals 4

    .line 488
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 490
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 419
    :try_start_0
    iput p1, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    .line 420
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    .line 421
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 418
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 456
    const/4 v0, 0x1

    return v0
.end method

.method public newStream(JJ)Ljava/io/InputStream;
    .locals 8
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 506
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    .line 508
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 510
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 511
    iget-wide p3, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 512
    :cond_0
    new-instance v7, Ljavax/mail/util/SharedFileInputStream;

    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 513
    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    long-to-int v0, p1

    int-to-long v4, v0

    add-long/2addr v2, v4

    sub-long v4, p3, p1

    long-to-int v0, v4

    int-to-long v4, v0

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 512
    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V

    return-object v7

    .line 509
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 287
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 288
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    if-lt v0, v1, :cond_0

    .line 289
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 290
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 291
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 293
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    aget-byte v0, v0, v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 342
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_4

    .line 344
    if-nez p3, :cond_0

    .line 345
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 348
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I

    move-result v0

    .line 349
    .local v0, "n":I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_1

    monitor-exit p0

    return v0

    .line 350
    :cond_1
    :goto_0
    if-lt v0, p3, :cond_2

    goto :goto_1

    .line 351
    :cond_2
    add-int v1, p2, v0

    sub-int v2, p3, v0

    :try_start_2
    invoke-direct {p0, p1, v1, v2}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I

    move-result v1

    .line 352
    .local v1, "n1":I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gtz v1, :cond_3

    .line 355
    .end local v1
    :goto_1
    monitor-exit p0

    return v0

    .line 353
    .restart local v1
    :cond_3
    add-int/2addr v0, v1

    .end local v1
    goto :goto_0

    .line 343
    .end local v0
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 340
    .end local p1
    .end local p2
    .end local p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 438
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 439
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-ltz v0, :cond_0

    .line 441
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 442
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 440
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Resetting to invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 367
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 368
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 369
    monitor-exit p0

    return-wide v0

    .line 371
    :cond_0
    :try_start_1
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 373
    .local v2, "avail":J
    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    .line 381
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 382
    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 383
    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    .line 384
    monitor-exit p0

    return-wide v0

    .line 387
    :cond_1
    cmp-long v0, v2, p1

    if-gez v0, :cond_2

    move-wide v0, v2

    goto :goto_0

    :cond_2
    move-wide v0, p1

    .line 388
    .local v0, "skipped":J
    :goto_0
    :try_start_2
    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    long-to-int v4, v4

    iput v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 389
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 366
    .end local v0
    .end local v2
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method
