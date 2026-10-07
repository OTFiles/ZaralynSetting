.class public Lcom/sun/mail/imap/protocol/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/protocol/Namespaces$Namespace;
    }
.end annotation


# instance fields
.field public otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

.field public personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

.field public shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 1
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/Namespaces;->getNamespaces(Lcom/sun/mail/iap/Response;)[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    .line 137
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/Namespaces;->getNamespaces(Lcom/sun/mail/iap/Response;)[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    .line 138
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/Namespaces;->getNamespaces(Lcom/sun/mail/iap/Response;)[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    .line 139
    return-void
.end method

.method private getNamespaces(Lcom/sun/mail/iap/Response;)[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;
    .locals 4
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 147
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    .line 148
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 149
    .local v0, "v":Ljava/util/Vector;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    .line 151
    :cond_0
    new-instance v1, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    invoke-direct {v1, p1}, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 152
    .local v1, "ns":Lcom/sun/mail/imap/protocol/Namespaces$Namespace;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 153
    .end local v1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    .line 154
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    .line 155
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    .line 156
    .local v1, "nsa":[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 157
    return-object v1

    .line 159
    .end local v0
    .end local v1
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 162
    const-string v1, "NIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    const/4 v1, 0x0

    return-object v1

    .line 163
    :cond_2
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected NIL, got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_3
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v2, "Expected NIL, got null"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
