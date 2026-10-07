.class public Lcom/sun/mail/iap/ResponseInputStream;
.super Ljava/lang/Object;
.source "ResponseInputStream.java"


# static fields
.field private static final incrementSlop:I = 0x10

.field private static final maxIncrement:I = 0x40000

.field private static final minIncrement:I = 0x100


# instance fields
.field private bin:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x800

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    .line 71
    return-void
.end method


# virtual methods
.method public readResponse()Lcom/sun/mail/iap/ByteArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    return-object v0
.end method

.method public readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;
    .locals 10
    .param p1, "ba"    # Lcom/sun/mail/iap/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 87
    new-instance v1, Lcom/sun/mail/iap/ByteArray;

    const/16 v2, 0x80

    new-array v3, v2, [B

    invoke-direct {v1, v3, v0, v2}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    move-object p1, v1

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v1

    .line 90
    .local v1, "buffer":[B
    move-object v2, v1

    move v1, v0

    .line 93
    .local v1, "idx":I
    .local v2, "buffer":[B
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 94
    .local v3, "b":I
    const/4 v4, 0x0

    .line 97
    .local v4, "gotCRLF":Z
    :goto_1
    const/4 v5, -0x1

    if-nez v4, :cond_7

    .line 98
    iget-object v6, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    move v3, v6

    if-ne v6, v5, :cond_2

    goto :goto_3

    .line 99
    :cond_2
    const/16 v5, 0xa

    if-eq v3, v5, :cond_3

    goto :goto_2

    .line 101
    :cond_3
    if-lez v1, :cond_4

    add-int/lit8 v5, v1, -0x1

    aget-byte v5, v2, v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_4

    .line 102
    const/4 v4, 0x1

    .line 104
    :cond_4
    :goto_2
    array-length v5, v2

    if-lt v1, v5, :cond_6

    .line 105
    array-length v5, v2

    .line 106
    .local v5, "incr":I
    const/high16 v6, 0x40000

    if-le v5, v6, :cond_5

    .line 107
    const/high16 v5, 0x40000

    .line 108
    :cond_5
    invoke-virtual {p1, v5}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 109
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v2

    .line 111
    .end local v5
    :cond_6
    add-int/lit8 v5, v1, 0x1

    .local v5, "idx":I
    int-to-byte v6, v3

    aput-byte v6, v2, v1

    .line 97
    .end local v1
    move v1, v5

    goto :goto_1

    .line 115
    .end local v5
    .restart local v1
    :cond_7
    :goto_3
    if-eq v3, v5, :cond_10

    .line 120
    const/4 v5, 0x5

    if-lt v1, v5, :cond_f

    add-int/lit8 v5, v1, -0x3

    aget-byte v5, v2, v5

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_8

    .line 121
    goto :goto_8

    .line 125
    :cond_8
    add-int/lit8 v5, v1, -0x4

    .local v5, "i":I
    :goto_4
    if-gez v5, :cond_9

    goto :goto_5

    .line 126
    :cond_9
    aget-byte v6, v2, v5

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_e

    .line 127
    nop

    .line 129
    :goto_5
    if-gez v5, :cond_a

    .line 130
    goto :goto_8

    .line 132
    :cond_a
    move v6, v0

    .line 135
    .local v6, "count":I
    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v1, -0x3

    :try_start_0
    invoke-static {v2, v7, v8}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I

    move-result v7

    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 141
    if-lez v6, :cond_1

    .line 142
    array-length v7, v2

    sub-int/2addr v7, v1

    .line 143
    .local v7, "avail":I
    add-int/lit8 v8, v6, 0x10

    if-le v8, v7, :cond_c

    .line 145
    add-int/lit8 v8, v6, 0x10

    sub-int/2addr v8, v7

    const/16 v9, 0x100

    if-le v9, v8, :cond_b

    .line 146
    goto :goto_6

    :cond_b
    add-int/lit8 v8, v6, 0x10

    sub-int v9, v8, v7

    .line 145
    :goto_6
    invoke-virtual {p1, v9}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 147
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v2

    .line 155
    :cond_c
    :goto_7
    if-gtz v6, :cond_d

    .line 91
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    goto :goto_0

    .line 156
    .restart local v3
    .restart local v4
    .restart local v5
    .restart local v6
    .restart local v7
    :cond_d
    iget-object v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v8, v2, v1, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .line 157
    .local v8, "actual":I
    sub-int/2addr v6, v8

    .line 158
    add-int/2addr v1, v8

    .end local v8
    goto :goto_7

    .line 136
    .end local v7
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_8

    .line 125
    .end local v0
    .end local v6
    :cond_e
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 163
    .end local v3
    .end local v4
    .end local v5
    :cond_f
    :goto_8
    invoke-virtual {p1, v1}, Lcom/sun/mail/iap/ByteArray;->setCount(I)V

    .line 164
    return-object p1

    .line 116
    .restart local v3
    .restart local v4
    :cond_10
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
