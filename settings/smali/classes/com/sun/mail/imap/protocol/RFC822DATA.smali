.class public Lcom/sun/mail/imap/protocol/RFC822DATA;
.super Ljava/lang/Object;
.source "RFC822DATA.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field static final name:[C


# instance fields
.field public data:Lcom/sun/mail/iap/ByteArray;

.field public msgno:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C

    .line 54
    return-void

    nop

    :array_0
    .array-data 2
        0x52S    # 'R'
        0x46S    # 'F'
        0x43S    # 'C'
        0x38S    # '8'
        0x32S    # '2'
        0x32S    # '2'
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 1
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/RFC822DATA;->msgno:I

    .line 66
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 67
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/RFC822DATA;->data:Lcom/sun/mail/iap/ByteArray;

    .line 68
    return-void
.end method


# virtual methods
.method public getByteArray()Lcom/sun/mail/iap/ByteArray;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/RFC822DATA;->data:Lcom/sun/mail/iap/ByteArray;

    return-object v0
.end method

.method public getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/RFC822DATA;->data:Lcom/sun/mail/iap/ByteArray;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/RFC822DATA;->data:Lcom/sun/mail/iap/ByteArray;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->toByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
