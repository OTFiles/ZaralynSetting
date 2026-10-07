.class public Lcom/sun/mail/pop3/POP3Store;
.super Ljavax/mail/Store;
.source "POP3Store.java"


# instance fields
.field private defaultPort:I

.field disableTop:Z

.field forgetTopHeaders:Z

.field private host:Ljava/lang/String;

.field private isSSL:Z

.field messageConstructor:Ljava/lang/reflect/Constructor;

.field private name:Ljava/lang/String;

.field private passwd:Ljava/lang/String;

.field private port:Lcom/sun/mail/pop3/Protocol;

.field private portNum:I

.field private portOwner:Lcom/sun/mail/pop3/POP3Folder;

.field rsetBeforeQuit:Z

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 6
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;

    .line 78
    const-string v3, "pop3"

    const/16 v4, 0x6e

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/pop3/POP3Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultPort"    # I
    .param p5, "isSSL"    # Z

    .line 83
    invoke-direct {p0, p1, p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 62
    const-string v0, "pop3"

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    .line 63
    const/16 v0, 0x6e

    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 67
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 68
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    .line 69
    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    .line 70
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    .line 72
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    .line 73
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 74
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    .line 75
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    .line 84
    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 86
    :cond_0
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    .line 87
    iput p4, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 88
    iput-boolean p5, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rsetbeforequit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "s":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    .line 94
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".disabletop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 98
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".forgettopheaders"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_3

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    .line 102
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".message.class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_5

    .line 104
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 105
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v4

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: POP3 message class: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 111
    .local v4, "cl":Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    nop

    .line 116
    .local v1, "messageClass":Ljava/lang/Class;
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v5

    goto :goto_0

    .line 117
    :catch_0
    move-exception v5

    .line 121
    .local v5, "ex1":Ljava/lang/ClassNotFoundException;
    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v1, v6

    .line 124
    .end local v5
    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljavax/mail/Folder;

    aput-object v6, v5, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v3

    move-object v0, v5

    .line 125
    .local v0, "c":[Ljava/lang/Class;
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 126
    .end local v0
    .end local v1
    .end local v4
    :catch_1
    move-exception v0

    .line 127
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: failed to load POP3 message class: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    .end local v0
    :cond_5
    :goto_1
    return-void
.end method

.method private checkConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 291
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    return-void

    .line 292
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 254
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v1}, Lcom/sun/mail/pop3/Protocol;->quit()Z

    .line 258
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 261
    :goto_0
    invoke-super {p0}, Ljavax/mail/Store;->close()V

    goto :goto_1

    .line 257
    :catchall_0
    move-exception v1

    .line 258
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 261
    invoke-super {p0}, Ljavax/mail/Store;->close()V

    .line 262
    throw v1

    .line 256
    :catch_0
    move-exception v1

    .line 258
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 263
    :goto_1
    monitor-exit p0

    return-void

    .line 253
    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method declared-synchronized closePort(Lcom/sun/mail/pop3/POP3Folder;)V
    .locals 1
    .param p1, "owner"    # Lcom/sun/mail/pop3/POP3Folder;

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-ne v0, p1, :cond_0

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 248
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 250
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 245
    .end local p1
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

    .line 284
    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    .line 286
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Store;->close()V

    .line 288
    :cond_0
    return-void
.end method

.method public getDefaultFolder()Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 267
    new-instance v0, Lcom/sun/mail/pop3/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 274
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 275
    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .locals 2
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 280
    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method declared-synchronized getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;
    .locals 9
    .param p1, "owner"    # Lcom/sun/mail/pop3/POP3Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v0, :cond_0

    .line 209
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 210
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    .line 214
    :cond_0
    :try_start_1
    new-instance v8, Lcom/sun/mail/pop3/Protocol;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    iget v2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getDebug()Z

    move-result v3

    .line 215
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v4

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    iget-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 214
    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/pop3/Protocol;-><init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V

    move-object v0, v8

    .line 218
    .local v0, "p":Lcom/sun/mail/pop3/Protocol;
    const/4 v1, 0x0

    .line 219
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/sun/mail/pop3/Protocol;->login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-nez v2, :cond_3

    .line 236
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 237
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 238
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v2, :cond_2

    .line 241
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 242
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit p0

    return-object v0

    .line 221
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 222
    :catch_0
    move-exception v2

    .line 224
    :goto_0
    :try_start_3
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    .end local v0
    .end local v1
    .end local p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized isConnected()Z
    .locals 3

    monitor-enter p0

    .line 180
    :try_start_0
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 183
    monitor-exit p0

    return v1

    .line 184
    :cond_0
    :try_start_1
    monitor-enter p0

    .line 186
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v0, :cond_1

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->noop()Z

    .line 190
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    monitor-exit p0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 184
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 191
    :catch_0
    move-exception v0

    .line 194
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_4
    invoke-super {p0}, Ljavax/mail/Store;->close()V

    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 197
    :catchall_1
    move-exception v2

    goto :goto_1

    .line 195
    :catch_1
    move-exception v2

    .line 198
    :goto_1
    :try_start_5
    monitor-exit p0

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    .line 184
    .end local v0
    :goto_2
    :try_start_6
    monitor-exit p0

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    .line 179
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "portNum"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 138
    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    .line 143
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "portstring":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move p2, v2

    .end local v1
    goto :goto_0

    .line 137
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 149
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_1
    :goto_0
    if-ne p2, v0, :cond_2

    .line 150
    iget v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    move p2, v0

    .line 152
    :cond_2
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    .line 153
    iput p2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    .line 154
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    .line 157
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 164
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Connect failed"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 158
    .end local v0
    :catch_1
    move-exception v0

    .line 159
    .local v0, "eex":Ljava/io/EOFException;
    new-instance v1, Ljavax/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    .end local v0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    .end local p0
    throw p1

    .line 139
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_3
    :goto_2
    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method
