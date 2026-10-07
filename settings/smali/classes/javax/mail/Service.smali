.class public abstract Ljavax/mail/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Service$TerminatorEvent;
    }
.end annotation


# instance fields
.field private connected:Z

.field private connectionListeners:Ljava/util/Vector;

.field protected debug:Z

.field private q:Ljavax/mail/EventQueue;

.field private qLock:Ljava/lang/Object;

.field protected session:Ljavax/mail/Session;

.field protected url:Ljavax/mail/URLName;


# direct methods
.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/mail/Service;->debug:Z

    .line 80
    iput-boolean v1, p0, Ljavax/mail/Service;->connected:Z

    .line 81
    iput-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    .line 555
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    .line 91
    iput-object p2, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 92
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/Service;->debug:Z

    .line 93
    return-void
.end method

.method private terminateQueue()V
    .locals 4

    .line 594
    iget-object v0, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    if-eqz v1, :cond_0

    .line 596
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 597
    .local v1, "dummyListeners":Ljava/util/Vector;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V

    .line 598
    iget-object v2, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    new-instance v3, Ljavax/mail/Service$TerminatorEvent;

    invoke-direct {v3}, Ljavax/mail/Service$TerminatorEvent;-><init>()V

    invoke-virtual {v2, v3, v1}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 599
    const/4 v2, 0x0

    iput-object v2, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    .line 594
    .end local v1
    :cond_0
    monitor-exit v0

    .line 602
    return-void

    .line 594
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    monitor-enter p0

    .line 483
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    .line 485
    :cond_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 486
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 482
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 425
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljavax/mail/Service;->setConnected(Z)V

    .line 426
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljavax/mail/Service;->notifyConnectionListeners(I)V

    .line 427
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public declared-synchronized connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    monitor-enter p0

    .line 210
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->isConnected()Z

    move-result v3

    if-nez v3, :cond_11

    .line 214
    const/4 v3, 0x0

    .line 215
    .local v3, "connected":Z
    const/4 v4, 0x0

    .line 216
    .local v4, "save":Z
    const/4 v5, 0x0

    .line 217
    .local v5, "protocol":Ljava/lang/String;
    const/4 v6, 0x0

    .line 222
    .local v6, "file":Ljava/lang/String;
    iget-object v7, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v7, :cond_4

    .line 223
    iget-object v7, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v7}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 224
    if-nez p1, :cond_0

    .line 225
    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .end local p1
    .local v7, "host":Ljava/lang/String;
    goto :goto_0

    .line 226
    .end local v7
    .restart local p1
    :cond_0
    move-object/from16 v7, p1

    .end local p1
    .restart local v7
    :goto_0
    const/4 v8, -0x1

    move/from16 v9, p2

    if-ne v9, v8, :cond_1

    .line 227
    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getPort()I

    move-result v8

    .line 229
    .end local p2
    .local v8, "port":I
    move v9, v8

    .end local v8
    .local v9, "port":I
    :cond_1
    if-nez v0, :cond_2

    .line 230
    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 231
    .end local p3
    .local v0, "user":Ljava/lang/String;
    if-nez p4, :cond_3

    .line 232
    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .end local p4
    .local v2, "password":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 234
    .end local v0
    .end local v2
    .restart local p3
    .restart local p4
    :cond_2
    if-nez p4, :cond_3

    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 236
    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    goto :goto_1

    .line 239
    :cond_3
    move-object/from16 v2, p4

    .end local p3
    .end local p4
    .restart local v0
    .restart local v2
    :goto_2
    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    goto :goto_3

    .line 243
    .end local v0
    .end local v2
    .end local v7
    .end local v9
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_4
    move/from16 v9, p2

    move-object/from16 v7, p1

    move-object/from16 v2, p4

    .end local p1
    .end local p2
    .end local p3
    .end local p4
    .restart local v0
    .restart local v2
    .restart local v7
    .restart local v9
    :goto_3
    if-eqz v5, :cond_6

    .line 244
    if-nez v7, :cond_5

    .line 245
    iget-object v8, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mail."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".host"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 246
    :cond_5
    if-nez v0, :cond_6

    .line 247
    iget-object v8, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mail."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".user"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 251
    :cond_6
    if-nez v7, :cond_7

    .line 252
    iget-object v8, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v10, "mail.host"

    invoke-virtual {v8, v10}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 254
    :cond_7
    if-nez v0, :cond_8

    .line 255
    iget-object v8, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v10, "mail.user"

    invoke-virtual {v8, v10}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v8

    goto :goto_4

    .line 258
    :cond_8
    move-object v8, v0

    .end local v0
    .local v8, "user":Ljava/lang/String;
    :goto_4
    if-nez v8, :cond_9

    .line 260
    :try_start_1
    const-string v0, "user.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v8
    .restart local v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 261
    .end local v0
    .restart local v8
    :catch_0
    move-exception v0

    .line 262
    .local v0, "sex":Ljava/lang/SecurityException;
    :try_start_2
    iget-boolean v10, v1, Ljavax/mail/Service;->debug:Z

    if-eqz v10, :cond_9

    .line 263
    iget-object v10, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual {v10}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/SecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 268
    .end local v0
    :cond_9
    move-object v0, v8

    .end local v8
    .local v0, "user":Ljava/lang/String;
    :goto_5
    if-nez v2, :cond_c

    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v8, :cond_c

    .line 270
    new-instance v8, Ljavax/mail/URLName;

    const/16 v16, 0x0

    move-object v10, v8

    move-object v11, v5

    move-object v12, v7

    move v13, v9

    move-object v14, v6

    move-object v15, v0

    invoke-direct/range {v10 .. v16}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    .line 271
    iget-object v8, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljavax/mail/Session;->getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;

    move-result-object v8

    .line 272
    .local v8, "pw":Ljavax/mail/PasswordAuthentication;
    if-eqz v8, :cond_b

    .line 273
    if-nez v0, :cond_a

    .line 274
    invoke-virtual {v8}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 275
    invoke-virtual {v8}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    goto :goto_6

    .line 276
    :cond_a
    invoke-virtual {v8}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 277
    invoke-virtual {v8}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v10

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v10

    goto :goto_6

    .line 280
    :cond_b
    const/4 v4, 0x1

    .line 286
    .end local v0
    .local v2, "user":Ljava/lang/String;
    .local v4, "password":Ljava/lang/String;
    .local v8, "save":Z
    :cond_c
    :goto_6
    move v8, v4

    move-object v4, v2

    move-object v2, v0

    const/4 v10, 0x0

    move-object v11, v10

    .line 288
    .local v11, "authEx":Ljavax/mail/AuthenticationFailedException;
    :try_start_3
    invoke-virtual {v1, v7, v9, v2, v4}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :try_end_3
    .catch Ljavax/mail/AuthenticationFailedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v0

    .line 294
    .end local v11
    .local v17, "authEx":Ljavax/mail/AuthenticationFailedException;
    :goto_7
    move-object/from16 v17, v11

    goto :goto_8

    .line 289
    .end local v17
    .restart local v11
    :catch_1
    move-exception v0

    move-object v12, v0

    .line 290
    .local v0, "ex":Ljavax/mail/AuthenticationFailedException;
    move-object v11, v0

    .end local v0
    goto :goto_7

    .line 294
    .end local v11
    .restart local v17
    :goto_8
    if-nez v3, :cond_d

    .line 297
    :try_start_4
    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 299
    .local v0, "addr":Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v11, v0

    goto :goto_9

    .line 298
    .end local v0
    :catch_2
    move-exception v0

    move-object v11, v0

    .line 299
    .local v0, "e":Ljava/net/UnknownHostException;
    nop

    .end local v0
    move-object v11, v10

    .line 301
    .local v11, "addr":Ljava/net/InetAddress;
    :goto_9
    :try_start_5
    iget-object v10, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    .line 302
    nop

    .line 303
    nop

    .line 304
    const/4 v14, 0x0

    .line 301
    move v12, v9

    move-object v13, v5

    move-object v15, v2

    invoke-virtual/range {v10 .. v15}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v0

    .line 305
    .local v0, "pw":Ljavax/mail/PasswordAuthentication;
    if-eqz v0, :cond_d

    .line 306
    invoke-virtual {v0}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 307
    invoke-virtual {v0}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 310
    invoke-virtual {v1, v7, v9, v2, v4}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    move v3, v10

    .line 315
    .end local v0
    .end local v11
    :cond_d
    if-nez v3, :cond_f

    .line 316
    if-eqz v17, :cond_e

    .line 317
    throw v17

    .line 319
    :cond_e
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    invoke-direct {v0}, Ljavax/mail/AuthenticationFailedException;-><init>()V

    throw v0

    .line 322
    :cond_f
    new-instance v0, Ljavax/mail/URLName;

    move-object v10, v0

    move-object v11, v5

    move-object v12, v7

    move v13, v9

    move-object v14, v6

    move-object v15, v2

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v16}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    .line 324
    if-eqz v8, :cond_10

    .line 325
    iget-object v0, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v10

    .line 326
    new-instance v11, Ljavax/mail/PasswordAuthentication;

    invoke-direct {v11, v2, v4}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, v10, v11}, Ljavax/mail/Session;->setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V

    .line 329
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljavax/mail/Service;->setConnected(Z)V

    .line 332
    invoke-virtual {v1, v0}, Ljavax/mail/Service;->notifyConnectionListeners(I)V

    .line 333
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    .line 211
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v17
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_11
    move/from16 v9, p2

    :try_start_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "already connected"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 169
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Ljavax/mail/Service;->connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 608
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 609
    invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V

    .line 610
    return-void
.end method

.method public declared-synchronized getURLName()Ljavax/mail/URLName;
    .locals 8

    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    new-instance v0, Ljavax/mail/URLName;

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 446
    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getPort()I

    move-result v4

    const/4 v5, 0x0

    .line 447
    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 445
    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 449
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    .line 385
    :try_start_0
    iget-boolean v0, p0, Ljavax/mail/Service;->connected:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method protected declared-synchronized notifyConnectionListeners(I)V
    .locals 2
    .param p1, "type"    # I

    monitor-enter p0

    .line 513
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    .line 515
    .local v0, "e":Ljavax/mail/event/ConnectionEvent;
    iget-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Service;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 528
    .end local v0
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 529
    invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V

    .line 530
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .line 512
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method protected protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method protected queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 2
    .param p1, "event"    # Ljavax/mail/event/MailEvent;
    .param p2, "vector"    # Ljava/util/Vector;

    .line 562
    iget-object v0, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    if-nez v1, :cond_0

    .line 564
    new-instance v1, Ljavax/mail/EventQueue;

    invoke-direct {v1}, Ljavax/mail/EventQueue;-><init>()V

    iput-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    .line 562
    :cond_0
    monitor-exit v0

    .line 575
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 576
    .local v0, "v":Ljava/util/Vector;
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v1, p1, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 577
    return-void

    .line 562
    .end local v0
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    monitor-enter p0

    .line 498
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 500
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 497
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method protected declared-synchronized setConnected(Z)V
    .locals 0
    .param p1, "connected"    # Z

    monitor-enter p0

    .line 402
    :try_start_0
    iput-boolean p1, p0, Ljavax/mail/Service;->connected:Z

    .line 403
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 401
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method protected declared-synchronized setURLName(Ljavax/mail/URLName;)V
    .locals 0
    .param p1, "url"    # Ljavax/mail/URLName;

    monitor-enter p0

    .line 470
    :try_start_0
    iput-object p1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 471
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 469
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 537
    invoke-virtual {p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    .line 538
    .local v0, "url":Ljavax/mail/URLName;
    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0}, Ljavax/mail/URLName;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 541
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
