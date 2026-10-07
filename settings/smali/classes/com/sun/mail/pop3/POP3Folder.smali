.class public Lcom/sun/mail/pop3/POP3Folder;
.super Ljavax/mail/Folder;
.source "POP3Folder.java"


# instance fields
.field private doneUidl:Z

.field private exists:Z

.field private message_cache:Ljava/util/Vector;

.field private name:Ljava/lang/String;

.field private opened:Z

.field private port:Lcom/sun/mail/pop3/Protocol;

.field private size:I

.field private total:I


# direct methods
.method constructor <init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V
    .locals 1
    .param p1, "store"    # Lcom/sun/mail/pop3/POP3Store;
    .param p2, "name"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    .line 73
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 75
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    .line 79
    iput-object p2, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    .line 80
    const-string v0, "INBOX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public appendMessages([Ljavax/mail/Message;)V
    .locals 2
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 341
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Append not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 517
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-nez v0, :cond_0

    .line 519
    return-void

    .line 518
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 511
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_0

    .line 513
    return-void

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkReadable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 523
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 525
    :cond_0
    return-void

    .line 524
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Readable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkWritable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 529
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 531
    return-void

    .line 530
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close(Z)V
    .locals 8
    .param p1, "expunge"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 239
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v3, v3, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->rset()Z

    .line 241
    :cond_0
    if-eqz p1, :cond_3

    iget v3, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 244
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .end local v3
    goto :goto_2

    .line 245
    .restart local v3
    :cond_1
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/pop3/POP3Message;

    move-object v5, v4

    .local v5, "m":Lcom/sun/mail/pop3/POP3Message;
    if-eqz v4, :cond_2

    .line 246
    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v5, v4}, Lcom/sun/mail/pop3/POP3Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v4

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 248
    :try_start_2
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Lcom/sun/mail/pop3/Protocol;->dele(I)Z

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 249
    :catch_0
    move-exception v4

    .line 250
    .local v4, "ioex":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Ljavax/mail/MessagingException;

    .line 251
    const-string v7, "Exception deleting messages during close"

    .line 252
    nop

    .line 250
    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 244
    .end local v4
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .end local v5
    goto :goto_0

    .line 258
    .end local v3
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->quit()Z

    .line 262
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 263
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 264
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 265
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 266
    :goto_3
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    goto :goto_4

    .line 261
    :catchall_0
    move-exception v3

    .line 262
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 263
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v4, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v4, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 264
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 265
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 266
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 267
    throw v3

    .line 259
    :catch_1
    move-exception v3

    .line 262
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 263
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 264
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 265
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 268
    :goto_4
    monitor-exit p0

    return-void

    .line 226
    .end local p1
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public create(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method protected createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;
    .locals 5
    .param p1, "f"    # Ljavax/mail/Folder;
    .param p2, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "m":Lcom/sun/mail/pop3/POP3Message;
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/pop3/POP3Store;

    iget-object v1, v1, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    .line 321
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v1, :cond_0

    .line 323
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    .line 324
    .local v2, "o":[Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/pop3/POP3Message;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 325
    .end local v2
    :catch_0
    move-exception v2

    .line 329
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 330
    new-instance v2, Lcom/sun/mail/pop3/POP3Message;

    invoke-direct {v2, p0, p2}, Lcom/sun/mail/pop3/POP3Message;-><init>(Ljavax/mail/Folder;I)V

    move-object v0, v2

    .line 331
    :cond_1
    return-object v0
.end method

.method public delete(Z)Z
    .locals 2
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 172
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "delete"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exists()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    return v0
.end method

.method public expunge()[Ljavax/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 354
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Expunge not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 4
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 368
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkReadable()V

    .line 369
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    if-nez v0, :cond_3

    sget-object v0, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 380
    .local v0, "uids":[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v1, v0}, Lcom/sun/mail/pop3/Protocol;->uidl([Ljava/lang/String;)Z

    move-result v1

    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 381
    monitor-exit p0

    return-void

    .line 388
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_2
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 394
    .end local v1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    .end local v0
    goto :goto_2

    .line 389
    .restart local v0
    .restart local v1
    :cond_1
    aget-object v2, v0, v1

    if-nez v2, :cond_2

    .line 390
    goto :goto_1

    .line 391
    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/sun/mail/pop3/POP3Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/pop3/POP3Message;

    .line 392
    .local v2, "m":Lcom/sun/mail/pop3/POP3Message;
    aget-object v3, v0, v1

    iput-object v3, v2, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    .line 388
    .end local v2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v1
    :catch_0
    move-exception v1

    .line 386
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "error getting UIDL"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 382
    .end local v1
    :catch_1
    move-exception v1

    .line 383
    .local v1, "eex":Ljava/io/EOFException;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 384
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 396
    .end local v0
    .end local v1
    :cond_3
    :goto_2
    sget-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 397
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p1

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v0, v1, :cond_4

    .end local v0
    goto :goto_5

    .line 399
    .restart local v0
    :cond_4
    :try_start_3
    aget-object v1, p1, v0

    check-cast v1, Lcom/sun/mail/pop3/POP3Message;

    .line 401
    .local v1, "msg":Lcom/sun/mail/pop3/POP3Message;
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sun/mail/pop3/POP3Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 403
    invoke-virtual {v1}, Lcom/sun/mail/pop3/POP3Message;->getSize()I

    :try_end_3
    .catch Ljavax/mail/MessageRemovedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 404
    .end local v1
    :catch_2
    move-exception v1

    .line 397
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 409
    .end local v0
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 367
    .end local p1
    .end local p2
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 505
    invoke-super {p0}, Ljavax/mail/Folder;->finalize()V

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 507
    return-void
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 161
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "not a directory"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .locals 3
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 310
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    move-object v1, v0

    .local v1, "m":Lcom/sun/mail/pop3/POP3Message;
    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;->createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;

    move-result-object v0

    move-object v1, v0

    .line 312
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 314
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    .line 304
    .end local v1
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized getMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 297
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 299
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkReadable()V

    .line 300
    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljavax/mail/Folder;
    .locals 2

    .line 93
    new-instance v0, Lcom/sun/mail/pop3/DefaultFolder;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/pop3/POP3Store;

    invoke-direct {v0, v1}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v0
.end method

.method public getPermanentFlags()Ljavax/mail/Flags;
    .locals 1

    .line 288
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    return-object v0
.end method

.method getProtocol()Lcom/sun/mail/pop3/Protocol;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 540
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    return-object v0
.end method

.method public getSeparator()C
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 441
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 442
    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized getSizes()[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 455
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 456
    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    new-array v0, v0, [I

    .line 457
    .local v0, "sizes":[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 458
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 460
    .local v2, "lis":Lcom/sun/mail/util/LineInputStream;
    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 461
    new-instance v3, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v3, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 463
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 477
    .end local v4
    nop

    .line 478
    :try_start_2
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->close()V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 479
    :catch_0
    move-exception v3

    .line 481
    :goto_1
    if-eqz v1, :cond_5

    .line 482
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 483
    :catch_1
    move-exception v3

    goto :goto_5

    .line 463
    .restart local v4
    :cond_1
    nop

    .line 465
    :try_start_4
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 466
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 467
    .local v5, "msgnum":I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 468
    .local v6, "size":I
    if-lez v5, :cond_0

    iget v7, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    if-gt v5, v7, :cond_0

    .line 469
    add-int/lit8 v7, v5, -0x1

    aput v6, v0, v7

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 470
    .end local v3
    .end local v5
    .end local v6
    :catch_2
    move-exception v3

    .end local v4
    goto :goto_0

    .line 475
    :catchall_0
    move-exception v3

    .line 477
    if-eqz v2, :cond_2

    .line 478
    :try_start_5
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->close()V

    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 479
    :catch_3
    move-exception v4

    .line 481
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 482
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 483
    :catch_4
    move-exception v4

    .line 484
    :cond_3
    :goto_3
    :try_start_7
    throw v3

    .line 473
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_5
    move-exception v3

    .line 477
    if-eqz v2, :cond_4

    .line 478
    :try_start_8
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->close()V

    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 479
    :catch_6
    move-exception v3

    .line 481
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 482
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 485
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    :goto_5
    monitor-exit p0

    return-object v0

    .line 454
    .end local v0
    .end local v1
    .end local v2
    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public getType()I
    .locals 1

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 419
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 420
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    .line 422
    .local v0, "m":Lcom/sun/mail/pop3/POP3Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    const-string v2, "UNKNOWN"

    if-ne v1, v2, :cond_0

    .line 423
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Message;->getMessageNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/pop3/Protocol;->uidl(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    .line 424
    :cond_0
    iget-object v1, v0, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 428
    :catch_0
    move-exception v1

    .line 429
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "error getting UIDL"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 425
    .end local v1
    :catch_1
    move-exception v1

    .line 426
    .local v1, "eex":Ljava/io/EOFException;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 427
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 418
    .end local v0
    .end local v1
    .end local p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public hasNewMessages()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 2

    .line 271
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 272
    return v1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x1

    return v0

    .line 276
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    :goto_0
    return v1
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "not a directory"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized listCommand()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 498
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;

    move-result-object v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method protected notifyMessageChangedListeners(ILjavax/mail/Message;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "m"    # Ljavax/mail/Message;

    .line 547
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    .line 548
    return-void
.end method

.method public declared-synchronized open(I)V
    .locals 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkClosed()V

    .line 195
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 200
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->stat()Lcom/sun/mail/pop3/Status;

    move-result-object v0

    .line 201
    .local v0, "s":Lcom/sun/mail/pop3/Status;
    iget v1, v0, Lcom/sun/mail/pop3/Status;->total:I

    iput v1, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    .line 202
    iget v1, v0, Lcom/sun/mail/pop3/Status;->size:I

    iput v1, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I

    .line 203
    iput p1, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 219
    .end local v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v0, Ljava/util/Vector;

    iget v2, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 220
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    iget v2, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->setSize(I)V

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    .line 223
    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 224
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "ioex":Ljava/io/IOException;
    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/Protocol;->quit()Z

    .line 212
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :try_start_4
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 213
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/pop3/POP3Store;

    :goto_0
    invoke-virtual {v1, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    goto :goto_1

    .line 211
    :catchall_0
    move-exception v2

    .line 212
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 213
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v1, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 214
    throw v2

    .line 209
    :catch_1
    move-exception v2

    .line 212
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 213
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/pop3/POP3Store;

    goto :goto_0

    .line 215
    :goto_1
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Open failed"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 196
    .end local v0
    :cond_1
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    const-string v1, "folder is not INBOX"

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 193
    .end local p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public renameTo(Ljavax/mail/Folder;)Z
    .locals 2
    .param p1, "f"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 182
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "renameTo"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
