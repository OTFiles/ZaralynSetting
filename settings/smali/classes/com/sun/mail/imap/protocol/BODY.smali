.class public Lcom/sun/mail/imap/protocol/BODY;
.super Ljava/lang/Object;
.source "BODY.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field static final name:[C


# instance fields
.field public data:Lcom/sun/mail/iap/ByteArray;

.field public msgno:I

.field public origin:I

.field public section:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    .line 54
    return-void

    nop

    :array_0
    .array-data 2
        0x42S    # 'B'
        0x4fS    # 'O'
        0x44S    # 'D'
        0x59S    # 'Y'
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 3
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODY;->origin:I

    .line 67
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODY;->msgno:I

    .line 69
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 72
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    move v1, v0

    .local v1, "b":I
    const/16 v2, 0x5d

    if-ne v0, v2, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODY;->origin:I

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    .line 85
    return-void

    .line 72
    :cond_1
    nop

    .line 73
    if-eqz v1, :cond_2

    .end local v1
    goto :goto_0

    .line 74
    .restart local v1
    :cond_2
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    .line 75
    nop

    .line 74
    const-string v2, "BODY parse error: missing ``]\'\' at section end"

    invoke-direct {v0, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getByteArray()Lcom/sun/mail/iap/ByteArray;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    return-object v0
.end method

.method public getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->toByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
