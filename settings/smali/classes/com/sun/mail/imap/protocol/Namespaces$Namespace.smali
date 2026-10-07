.class public Lcom/sun/mail/imap/protocol/Namespaces$Namespace;
.super Ljava/lang/Object;
.source "Namespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/imap/protocol/Namespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Namespace"
.end annotation


# instance fields
.field public delimiter:C

.field public prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 4
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_7

    .line 80
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->prefix:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 83
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    .line 84
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    .line 85
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    .line 86
    iget-char v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    .line 90
    nop

    .line 89
    const-string v1, "Missing \'\"\' at end of QUOTED_CHAR"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 95
    const-string v1, "NIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    const/4 v1, 0x0

    iput-char v1, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    .line 100
    .end local v0
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_3

    .line 104
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 105
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 107
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readStringList()[Ljava/lang/String;

    .line 109
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    .line 111
    return-void

    .line 110
    :cond_4
    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    const-string v1, "Missing \')\' at end of Namespace"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    .restart local v0
    :cond_5
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected NIL, got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_6
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v2, "Expected NIL, got null"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    .end local v0
    :cond_7
    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    .line 78
    nop

    .line 77
    const-string v1, "Missing \'(\' at start of Namespace"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
