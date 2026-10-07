.class public Lcom/sun/mail/iap/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private bytes:[B

.field private count:I

.field private start:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 73
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    .line 74
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B

    .line 63
    iput p2, p0, Lcom/sun/mail/iap/ByteArray;->start:I

    .line 64
    iput p3, p0, Lcom/sun/mail/iap/ByteArray;->count:I

    .line 65
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/sun/mail/iap/ByteArray;->count:I

    return v0
.end method

.method public getNewBytes()[B
    .locals 5

    .line 88
    iget v0, p0, Lcom/sun/mail/iap/ByteArray;->count:I

    new-array v0, v0, [B

    .line 89
    .local v0, "b":[B
    iget-object v1, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B

    iget v2, p0, Lcom/sun/mail/iap/ByteArray;->start:I

    iget v3, p0, Lcom/sun/mail/iap/ByteArray;->count:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/sun/mail/iap/ByteArray;->start:I

    return v0
.end method

.method public grow(I)V
    .locals 4
    .param p1, "incr"    # I

    .line 129
    iget-object v0, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B

    array-length v0, v0

    add-int/2addr v0, p1

    new-array v0, v0, [B

    .line 130
    .local v0, "nbuf":[B
    iget-object v1, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B

    iget-object v2, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iput-object v0, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B

    .line 132
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 113
    iput p1, p0, Lcom/sun/mail/iap/ByteArray;->count:I

    .line 114
    return-void
.end method

.method public toByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    .locals 4

    .line 120
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B

    iget v2, p0, Lcom/sun/mail/iap/ByteArray;->start:I

    iget v3, p0, Lcom/sun/mail/iap/ByteArray;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method
