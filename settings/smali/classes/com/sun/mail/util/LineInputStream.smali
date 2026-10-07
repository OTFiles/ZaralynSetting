.class public Lcom/sun/mail/util/LineInputStream;
.super Ljava/io/FilterInputStream;
.source "LineInputStream.java"


# instance fields
.field private lineBuffer:[C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 63
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 64
    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    .line 79
    .local v0, "in":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 81
    .local v1, "buf":[C
    if-nez v1, :cond_0

    .line 82
    const/16 v2, 0x80

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    move-object v1, v2

    .line 85
    :cond_0
    array-length v2, v1

    .line 86
    .local v2, "room":I
    const/4 v3, 0x0

    .line 88
    .local v3, "offset":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v4

    move v5, v4

    .local v5, "c1":I
    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    const/16 v4, 0xa

    if-ne v5, v4, :cond_2

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/16 v8, 0xd

    if-ne v5, v8, :cond_7

    .line 93
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 94
    .local v9, "c2":I
    if-ne v9, v8, :cond_3

    .line 95
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 96
    :cond_3
    if-eq v9, v4, :cond_5

    .line 98
    instance-of v4, v0, Ljava/io/PushbackInputStream;

    if-nez v4, :cond_4

    .line 99
    new-instance v4, Ljava/io/PushbackInputStream;

    invoke-direct {v4, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    move-object v0, v4

    .line 100
    :cond_4
    move-object v4, v0

    check-cast v4, Ljava/io/PushbackInputStream;

    invoke-virtual {v4, v9}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 102
    nop

    .line 116
    .end local v9
    :cond_5
    :goto_1
    if-ne v5, v7, :cond_6

    if-nez v3, :cond_6

    .line 117
    const/4 v4, 0x0

    return-object v4

    .line 119
    :cond_6
    invoke-static {v1, v6, v3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 107
    :cond_7
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_8

    .line 108
    add-int/lit16 v4, v3, 0x80

    new-array v1, v4, [C

    .line 109
    array-length v4, v1

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 110
    .end local v2
    .local v4, "room":I
    iget-object v2, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    invoke-static {v2, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput-object v1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 113
    move v2, v4

    .end local v4
    .restart local v2
    :cond_8
    add-int/lit8 v4, v3, 0x1

    .local v4, "offset":I
    int-to-char v6, v5

    aput-char v6, v1, v3

    .line 88
    .end local v3
    .end local v5
    move v3, v4

    goto :goto_0
.end method
