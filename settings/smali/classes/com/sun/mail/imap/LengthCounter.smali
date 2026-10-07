.class Lcom/sun/mail/imap/LengthCounter;
.super Ljava/io/OutputStream;
.source "IMAPFolder.java"


# instance fields
.field private buf:[B

.field private maxsize:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxsize"    # I

    .line 2767
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2763
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    .line 2768
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2769
    iput p1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    .line 2770
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 2821
    iget-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 2817
    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    return v0
.end method

.method public write(I)V
    .locals 5
    .param p1, "b"    # I

    .line 2773
    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 2774
    .local v0, "newsize":I
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v1, :cond_2

    .line 2775
    iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-ltz v1, :cond_0

    .line 2776
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    goto :goto_0

    .line 2777
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 2778
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    .line 2779
    .local v1, "newbuf":[B
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2780
    iput-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2781
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_0

    .line 2783
    .end local v1
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 2786
    :cond_2
    :goto_0
    iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    .line 2787
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

    .line 2813
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/imap/LengthCounter;->write([BII)V

    .line 2814
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 2790
    if-ltz p2, :cond_4

    array-length v0, p1

    if-gt p2, v0, :cond_4

    if-ltz p3, :cond_4

    .line 2791
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    add-int v0, p2, p3

    if-ltz v0, :cond_4

    .line 2793
    if-nez p3, :cond_0

    .line 2794
    return-void

    .line 2796
    :cond_0
    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int/2addr v0, p3

    .line 2797
    .local v0, "newsize":I
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v1, :cond_3

    .line 2798
    iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-ltz v1, :cond_1

    .line 2799
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    goto :goto_0

    .line 2800
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 2801
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    .line 2802
    .local v1, "newbuf":[B
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2803
    iput-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2804
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2806
    .end local v1
    :cond_2
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2809
    :cond_3
    :goto_0
    iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    .line 2810
    return-void

    .line 2792
    .end local v0
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
