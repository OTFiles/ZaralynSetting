.class public Lcom/sun/mail/smtp/SMTPOutputStream;
.super Lcom/sun/mail/util/CRLFOutputStream;
.source "SMTPOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 57
    invoke-direct {p0, p1}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    return-void
.end method


# virtual methods
.method public ensureAtBOL()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->atBOL:Z

    if-nez v0, :cond_0

    .line 112
    invoke-super {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    .line 113
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0

    .line 104
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_1

    .line 64
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 67
    :cond_1
    invoke-super {p0, p1}, Lcom/sun/mail/util/CRLFOutputStream;->write(I)V

    .line 68
    return-void
.end method

.method public write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    const/16 v1, 0xa

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    .line 75
    .local v0, "lastc":I
    :goto_0
    move v2, p2

    .line 77
    .local v2, "start":I
    add-int/2addr p3, p2

    .line 78
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-lt v3, p3, :cond_2

    .line 86
    .end local v3
    sub-int v1, p3, v2

    if-lez v1, :cond_1

    .line 87
    sub-int v1, p3, v2

    invoke-super {p0, p1, v2, v1}, Lcom/sun/mail/util/CRLFOutputStream;->write([BII)V

    .line 88
    :cond_1
    return-void

    .line 79
    .restart local v3
    :cond_2
    if-eq v0, v1, :cond_3

    const/16 v4, 0xd

    if-ne v0, v4, :cond_4

    :cond_3
    aget-byte v4, p1, v3

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_4

    .line 80
    sub-int v4, v3, v2

    invoke-super {p0, p1, v2, v4}, Lcom/sun/mail/util/CRLFOutputStream;->write([BII)V

    .line 81
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 82
    move v2, v3

    .line 84
    :cond_4
    aget-byte v0, p1, v3

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
