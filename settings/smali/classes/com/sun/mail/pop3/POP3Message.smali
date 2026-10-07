.class public Lcom/sun/mail/pop3/POP3Message;
.super Ljavax/mail/internet/MimeMessage;
.source "POP3Message.java"


# static fields
.field static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private folder:Lcom/sun/mail/pop3/POP3Folder;

.field private hdrSize:I

.field private msgSize:I

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;I)V
    .locals 1
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 68
    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 69
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    .line 74
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/pop3/POP3Folder;

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    .line 75
    return-void
.end method

.method private loadHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 459
    const/4 v0, 0x0

    :try_start_0
    monitor-enter p0

    .line 460
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v1, :cond_0

    .line 461
    monitor-exit p0

    return-void

    .line 462
    :cond_0
    const/4 v1, 0x0

    .line 463
    .local v1, "hdrs":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v2, v2, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    if-nez v2, :cond_2

    .line 464
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v2

    iget v3, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v2, v3, v0}, Lcom/sun/mail/pop3/Protocol;->top(II)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    iput v2, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 472
    new-instance v2, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v2, v1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    .end local v1
    goto :goto_1

    .line 468
    .restart local v1
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Message;->getContentStream()Ljava/io/InputStream;

    move-result-object v2

    .line 469
    .local v2, "cs":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 459
    .end local v1
    .end local v2
    :goto_1
    monitor-exit p0

    .line 481
    return-void

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 478
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 479
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "error loading POP3 headers"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 475
    .end local v0
    :catch_1
    move-exception v1

    .line 476
    .local v1, "eex":Ljava/io/EOFException;
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v2, v0}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 477
    new-instance v0, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

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

    .line 324
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

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

    .line 397
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

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

    .line 408
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

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

    .line 355
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    :try_start_0
    monitor-enter p0

    .line 144
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    if-nez v1, :cond_a

    .line 145
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v1}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v1

    iget v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    .line 146
    iget v3, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    iget v4, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    add-int/2addr v3, v4

    goto :goto_0

    .line 145
    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/pop3/Protocol;->retr(II)Ljava/io/InputStream;

    move-result-object v1

    .line 147
    .local v1, "rawcontent":Ljava/io/InputStream;
    const/4 v2, 0x1

    if-eqz v1, :cond_9

    .line 151
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v3, :cond_8

    .line 152
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v3, v3, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    if-eqz v3, :cond_1

    goto :goto_4

    .line 169
    :cond_1
    move v3, v0

    .line 171
    .local v3, "offset":I
    :cond_2
    const/4 v4, 0x0

    .line 173
    .local v4, "len":I
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v5

    move v6, v5

    .local v6, "c1":I
    if-gez v5, :cond_3

    goto :goto_2

    .line 174
    :cond_3
    const/16 v5, 0xa

    if-ne v6, v5, :cond_4

    .line 175
    goto :goto_2

    .line 176
    :cond_4
    const/16 v7, 0xd

    if-ne v6, v7, :cond_7

    .line 178
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v7

    if-lez v7, :cond_5

    .line 179
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 180
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v7, v5, :cond_5

    .line 181
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 183
    nop

    .line 192
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v5

    if-nez v5, :cond_6

    .line 193
    goto :goto_3

    .line 196
    :cond_6
    if-nez v4, :cond_2

    .line 199
    .end local v4
    .end local v6
    :goto_3
    nop

    .line 200
    move-object v2, v1

    check-cast v2, Ljavax/mail/internet/SharedInputStream;

    invoke-interface {v2}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v4

    long-to-int v2, v4

    .line 199
    iput v2, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .end local v3
    goto :goto_5

    .line 187
    .restart local v3
    .restart local v4
    .restart local v6
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .end local v6
    goto :goto_1

    .line 153
    .end local v3
    .end local v4
    :cond_8
    :goto_4
    new-instance v2, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v2, v1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 154
    nop

    .line 155
    move-object v2, v1

    check-cast v2, Ljavax/mail/internet/SharedInputStream;

    invoke-interface {v2}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v2

    long-to-int v2, v2

    .line 154
    iput v2, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 202
    :goto_5
    nop

    .line 203
    move-object v2, v1

    check-cast v2, Ljavax/mail/internet/SharedInputStream;

    iget v3, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    int-to-long v3, v3

    const-wide/16 v5, -0x1

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v2

    .line 202
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    .line 204
    nop

    .end local v1
    goto :goto_6

    .line 148
    .restart local v1
    :cond_9
    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Message;->expunged:Z

    .line 149
    new-instance v2, Ljavax/mail/MessageRemovedException;

    invoke-direct {v2}, Ljavax/mail/MessageRemovedException;-><init>()V

    throw v2

    .line 143
    .end local v1
    :cond_a
    :goto_6
    monitor-exit p0

    .line 213
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 143
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 210
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 211
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "error fetching POP3 content"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 207
    .end local v0
    :catch_1
    move-exception v1

    .line 208
    .local v1, "eex":Ljava/io/EOFException;
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v2, v0}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 209
    new-instance v0, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    .line 267
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

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

    .line 368
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

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

    .line 436
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

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

    .line 381
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 105
    :try_start_0
    monitor-enter p0

    .line 106
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-ltz v0, :cond_0

    .line 107
    iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    monitor-exit p0

    return v0

    .line 108
    :cond_0
    iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-gez v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/Protocol;->list(I)I

    move-result v0

    iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 124
    :cond_3
    :goto_0
    iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    monitor-exit p0

    return v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 129
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "error getting size"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 126
    .end local v0
    :catch_1
    move-exception v0

    .line 127
    .local v0, "eex":Ljava/io/EOFException;
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 128
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized invalidate(Z)V
    .locals 2
    .param p1, "invalidateHeaders"    # Z

    monitor-enter p0

    .line 225
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->content:[B

    .line 226
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    .line 227
    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 228
    if-eqz p1, :cond_0

    .line 229
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 230
    iput v1, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 232
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 224
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 339
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveChanges()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 450
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlags(Ljavax/mail/Flags;Z)V
    .locals 3
    .param p1, "newFlags"    # Ljavax/mail/Flags;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    .line 86
    .local v0, "oldFlags":Ljavax/mail/Flags;
    invoke-super {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setFlags(Ljavax/mail/Flags;Z)V

    .line 87
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1, v0}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    .line 89
    const/4 v2, 0x1

    .line 88
    invoke-virtual {v1, v2, p0}, Lcom/sun/mail/pop3/POP3Folder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    .line 90
    :cond_0
    return-void
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

    .line 306
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public top(I)Ljava/io/InputStream;
    .locals 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 244
    :try_start_0
    monitor-enter p0

    .line 245
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v0, v1, p1}, Lcom/sun/mail/pop3/Protocol;->top(II)Ljava/io/InputStream;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 250
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 251
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "error getting size"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 247
    .end local v0
    :catch_1
    move-exception v0

    .line 248
    .local v0, "eex":Ljava/io/EOFException;
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 249
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
.end method
