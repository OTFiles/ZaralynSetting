.class public Lcom/sun/mail/util/TraceInputStream;
.super Ljava/io/FilterInputStream;
.source "TraceInputStream.java"


# instance fields
.field private quote:Z

.field private trace:Z

.field private traceOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "traceOut"    # Ljava/io/OutputStream;

    .line 67
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    .line 56
    iput-boolean v0, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z

    .line 68
    iput-object p2, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    .line 69
    return-void
.end method

.method private final writeByte(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    and-int/lit16 p1, p1, 0xff

    .line 126
    const/16 v0, 0x7f

    if-le p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 128
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 129
    and-int/lit8 p1, p1, 0x7f

    .line 131
    :cond_0
    const/16 v0, 0xd

    const/16 v1, 0x5c

    if-ne p1, v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 133
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 134
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 135
    iget-object v2, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 136
    iget-object v1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 137
    iget-object v1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 138
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 140
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 141
    :cond_3
    const/16 v0, 0x20

    if-ge p1, v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 143
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x40

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 147
    :goto_0
    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 94
    .local v0, "b":I
    iget-boolean v1, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 95
    iget-boolean v1, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z

    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0, v0}, Lcom/sun/mail/util/TraceInputStream;->writeByte(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 100
    :cond_1
    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 111
    .local v0, "count":I
    iget-boolean v1, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 112
    iget-boolean v1, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z

    if-eqz v1, :cond_1

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .end local v1
    goto :goto_1

    .line 114
    .restart local v1
    :cond_0
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lcom/sun/mail/util/TraceInputStream;->writeByte(I)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 118
    :cond_2
    :goto_1
    return v0
.end method

.method public setQuote(Z)V
    .locals 0
    .param p1, "quote"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z

    .line 85
    return-void
.end method

.method public setTrace(Z)V
    .locals 0
    .param p1, "trace"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    .line 77
    return-void
.end method
