.class public Lcom/sun/mail/imap/IMAPBodyPart;
.super Ljavax/mail/internet/MimeBodyPart;
.source "IMAPBodyPart.java"


# instance fields
.field private bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field private description:Ljava/lang/String;

.field private headersLoaded:Z

.field private message:Lcom/sun/mail/imap/IMAPMessage;

.field private sectionId:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V
    .locals 4
    .param p1, "bs"    # Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/sun/mail/imap/IMAPMessage;

    .line 73
    invoke-direct {p0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headersLoaded:Z

    .line 74
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 75
    iput-object p2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    .line 78
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    iget-object v3, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 79
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private declared-synchronized loadHeaders()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 291
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headersLoaded:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 292
    monitor-exit p0

    return-void

    .line 294
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 302
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 305
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 307
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 308
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    .line 309
    .local v2, "seqnum":I
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".MIME"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v3

    .line 311
    .local v3, "b":Lcom/sun/mail/imap/protocol/BODY;
    if-eqz v3, :cond_3

    .line 314
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v4

    .line 315
    .local v4, "bis":Ljava/io/ByteArrayInputStream;
    if-eqz v4, :cond_2

    .line 318
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v5, v4}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V

    goto :goto_0

    .line 316
    :cond_2
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "Failed to fetch headers"

    invoke-direct {v5, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 312
    .end local v4
    :cond_3
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "Failed to fetch headers"

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 327
    .end local v2
    .end local v3
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v3, "Content-Type"

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v3, "Content-Transfer-Encoding"

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 332
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v3, "Content-Description"

    .line 333
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    .line 332
    invoke-virtual {v2, v3, v4}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_5
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 336
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v3, "Content-ID"

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_6
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 339
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v3, "Content-MD5"

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .end local v1
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :goto_0
    :try_start_3
    monitor-exit v0

    .line 348
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headersLoaded:Z

    .line 349
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    .line 300
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 341
    .end local v1
    :catch_1
    move-exception v1

    .line 342
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    .line 343
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 300
    .end local v1
    :goto_1
    monitor-exit v0

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 290
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 245
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 270
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 274
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 275
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 253
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 254
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z

    move-result v1

    .line 166
    .local v1, "pk":Z
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 168
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 171
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 173
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 174
    new-instance v4, Lcom/sun/mail/imap/IMAPInputStream;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v7, v7, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/sun/mail/imap/IMAPInputStream;-><init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V

    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    .line 178
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    .line 180
    .local v4, "seqnum":I
    if-eqz v1, :cond_1

    .line 181
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v5

    .local v5, "b":Lcom/sun/mail/imap/protocol/BODY;
    goto :goto_0

    .line 183
    .end local v5
    :cond_1
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v5

    .line 184
    .restart local v5
    :goto_0
    if-eqz v5, :cond_2

    .line 185
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v6

    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v6

    .line 166
    .end local v3
    .end local v4
    .end local v5
    :cond_2
    :try_start_3
    monitor-exit v2

    .line 194
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 197
    return-object v0

    .line 195
    :cond_3
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "No content"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 189
    :catch_0
    move-exception v3

    .line 190
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 186
    .end local v3
    :catch_1
    move-exception v3

    .line 187
    .local v3, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v4, Ljavax/mail/FolderClosedException;

    .line 188
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 187
    invoke-direct {v4, v5, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4

    .line 166
    .end local v3
    :goto_1
    monitor-exit v2

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isMulti()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljavax/activation/DataHandler;

    .line 205
    new-instance v1, Lcom/sun/mail/imap/IMAPMultipartDataSource;

    .line 206
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    .line 205
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sun/mail/imap/IMAPMultipartDataSource;-><init>(Ljavax/mail/internet/MimePart;[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    .line 204
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->dh:Ljavax/activation/DataHandler;

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isNested()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isREV1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    new-instance v0, Ljavax/activation/DataHandler;

    .line 210
    new-instance v1, Lcom/sun/mail/imap/IMAPNestedMessage;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    .line 211
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 212
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 213
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    .line 210
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/mail/imap/IMAPNestedMessage;-><init>(Lcom/sun/mail/imap/IMAPMessage;Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Lcom/sun/mail/imap/protocol/ENVELOPE;Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 218
    :cond_1
    :goto_0
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;

    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;

    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;

    .line 140
    .end local v0
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_1
    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 235
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 280
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 281
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 260
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 287
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 266
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 249
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 226
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .locals 2
    .param p1, "mp"    # Ljavax/mail/Multipart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 230
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 2
    .param p1, "md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 124
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 2
    .param p1, "content"    # Ljavax/activation/DataHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 222
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 145
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 2
    .param p1, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 158
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 240
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updateHeaders()V
    .locals 0

    .line 88
    return-void
.end method
