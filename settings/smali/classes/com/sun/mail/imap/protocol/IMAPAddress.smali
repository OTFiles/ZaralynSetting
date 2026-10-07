.class Lcom/sun/mail/imap/protocol/IMAPAddress;
.super Ljavax/mail/internet/InternetAddress;
.source "ENVELOPE.java"


# static fields
.field private static final serialVersionUID:J = -0x353b93d010f59e38L


# instance fields
.field private group:Z

.field private grouplist:[Ljavax/mail/internet/InternetAddress;

.field private groupname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 7
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    .line 151
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 153
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_9

    .line 156
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->encodedPersonal:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "mb":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_8

    .line 164
    if-nez v1, :cond_4

    .line 166
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    .line 167
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 169
    return-void

    .line 173
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 175
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 176
    .local v4, "v":Ljava/util/Vector;
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v5

    if-ne v5, v3, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    new-instance v5, Lcom/sun/mail/imap/protocol/IMAPAddress;

    invoke-direct {v5, p1}, Lcom/sun/mail/imap/protocol/IMAPAddress;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 178
    .local v5, "a":Lcom/sun/mail/imap/protocol/IMAPAddress;
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPAddress;->isEndOfGroup()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 179
    nop

    .line 185
    .end local v5
    :goto_1
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    .line 187
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sun/mail/imap/protocol/IMAPAddress;

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    .line 188
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_3

    .line 180
    .restart local v5
    :cond_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 181
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    :cond_3
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .end local v5
    goto :goto_0

    .line 190
    .end local v2
    .end local v4
    :cond_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 192
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 193
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    goto :goto_3

    .line 195
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    goto :goto_3

    .line 191
    :cond_7
    :goto_2
    iput-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    .line 198
    :goto_3
    return-void

    .line 162
    :cond_8
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v3, "ADDRESS parse error"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    .end local v0
    .end local v1
    :cond_9
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    const-string v1, "ADDRESS parse error"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, [Ljavax/mail/internet/InternetAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/internet/InternetAddress;

    return-object v0
.end method

.method isEndOfGroup()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGroup()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    return v0
.end method
