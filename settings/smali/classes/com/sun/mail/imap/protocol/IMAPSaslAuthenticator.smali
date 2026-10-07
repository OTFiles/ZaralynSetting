.class public Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;
.super Ljava/lang/Object;
.source "IMAPSaslAuthenticator.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/SaslAuthenticator;


# instance fields
.field private debug:Z

.field private host:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private out:Ljava/io/PrintStream;

.field private pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private props:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/util/Properties;ZLjava/io/PrintStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "pr"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "props"    # Ljava/util/Properties;
    .param p4, "debug"    # Z
    .param p5, "out"    # Ljava/io/PrintStream;
    .param p6, "host"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 70
    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    .line 72
    iput-boolean p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    .line 73
    iput-object p5, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    .line 74
    iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    return p0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    return-object p0
.end method


# virtual methods
.method public authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p1, "mechs"    # [Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "authzid"    # Ljava/lang/String;
    .param p4, "u"    # Ljava/lang/String;
    .param p5, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 80
    iget-object v9, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    monitor-enter v9

    .line 81
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v10, v0

    .line 82
    .local v10, "v":Ljava/util/Vector;
    const/4 v11, 0x0

    .line 83
    .local v11, "tag":Ljava/lang/String;
    const/4 v12, 0x0

    .line 84
    .local v12, "r":Lcom/sun/mail/iap/Response;
    const/4 v13, 0x0

    .line 85
    .local v13, "done":Z
    iget-boolean v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v2, "IMAP SASL DEBUG: Mechanisms:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v8

    if-lt v0, v2, :cond_0

    .line 89
    .end local v0
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    goto :goto_1

    .line 88
    .restart local v0
    :cond_0
    iget-object v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v8, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0
    :cond_1
    :goto_1
    move-object/from16 v14, p2

    .line 94
    .local v14, "r0":Ljava/lang/String;
    move-object/from16 v15, p4

    .line 95
    .local v15, "u0":Ljava/lang/String;
    move-object/from16 v6, p5

    .line 96
    .local v6, "p0":Ljava/lang/String;
    new-instance v7, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;

    invoke-direct {v7, v1, v15, v6, v14}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;-><init>(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v7, "cbh":Ljavax/security/auth/callback/CallbackHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    :try_start_1
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    .line 137
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    .line 136
    :try_end_1
    .catch Ljavax/security/sasl/SaslException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v8

    move-object/from16 v16, v3

    move-object/from16 v3, p3

    move v8, v5

    move-object v5, v0

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    .end local v6
    .local v17, "p0":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v2 .. v7}, Ljavax/security/sasl/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Ljavax/security/sasl/SaslClient;

    move-result-object v0

    :try_end_2
    .catch Ljavax/security/sasl/SaslException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    .line 142
    .local v2, "sc":Ljavax/security/sasl/SaslClient;
    nop

    .line 144
    if-nez v2, :cond_3

    .line 145
    :try_start_3
    iget-boolean v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v3, "IMAP SASL DEBUG: No SASL support"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    :cond_2
    monitor-exit v9

    return v8

    .line 149
    :cond_3
    iget-boolean v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IMAP SASL DEBUG: SASL client "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AUTHENTICATE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    nop

    .line 154
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v0

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v0

    .line 162
    .end local v11
    .local v3, "tag":Ljava/lang/String;
    :try_start_5
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getIMAPOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v5, v0

    .line 177
    .local v5, "os":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v6, v0

    .line 178
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    move-object v11, v0

    .line 181
    .local v11, "CRLF":[B
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "XGWTRUSTEDAPP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v4, v0

    .line 182
    .local v4, "isXGWTRUSTEDAPP":Z
    :goto_2
    if-eqz v13, :cond_8

    .line 233
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 234
    const-string v0, "javax.security.sasl.qop"

    invoke-interface {v2, v0}, Ljavax/security/sasl/SaslClient;->getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    .local v0, "qop":Ljava/lang/String;
    if-eqz v0, :cond_7

    const-string v8, "auth-int"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 236
    const-string v8, "auth-conf"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 238
    :cond_5
    iget-boolean v8, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v8, :cond_6

    .line 239
    iget-object v8, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    move-object/from16 v18, v0

    const-string v0, "IMAP SASL DEBUG: Mechanism requires integrity or confidentiality"

    .end local v0
    .local v18, "qop":Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 241
    .end local v18
    .restart local v0
    :cond_6
    move-object/from16 v18, v0

    .end local v0
    .restart local v18
    :goto_3
    monitor-exit v9

    const/4 v8, 0x0

    return v8

    .line 251
    .end local v18
    :cond_7
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/mail/iap/Response;

    .line 252
    .local v0, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {v10, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 253
    iget-object v8, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v8, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 256
    iget-object v8, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v8, v12}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 257
    iget-object v8, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v8, v12}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 258
    monitor-exit v9

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x1

    return v8

    .line 184
    .end local v0
    :cond_8
    :try_start_6
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    move-object v12, v0

    .line 185
    invoke-virtual {v12}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 186
    const/4 v8, 0x0

    move-object v0, v8

    check-cast v0, [B

    .line 187
    .local v0, "ba":[B
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v16

    if-nez v16, :cond_b

    .line 188
    invoke-virtual {v12}, Lcom/sun/mail/iap/Response;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/mail/iap/ByteArray;->getNewBytes()[B

    move-result-object v8

    move-object v0, v8

    .line 189
    array-length v8, v0

    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v8, :cond_9

    .line 190
    :try_start_7
    invoke-static {v0}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([B)[B

    move-result-object v8

    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v0, v8

    goto :goto_4

    .line 223
    .end local v0
    :catch_0
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v13

    move-object/from16 v21, v14

    goto/16 :goto_9

    .line 191
    .restart local v0
    :cond_9
    :goto_4
    :try_start_8
    iget-boolean v8, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v8, :cond_a

    .line 192
    iget-object v8, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v19, v7

    :try_start_9
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7
    .local v19, "cbh":Ljavax/security/auth/callback/CallbackHandler;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move/from16 v20, v13

    :try_start_a
    const-string v13, "IMAP SASL DEBUG: challenge: "

    .end local v13
    .local v20, "done":Z
    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    array-length v13, v0

    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v21, v14

    const/4 v14, 0x0

    :try_start_b
    invoke-static {v0, v14, v13}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v13

    .end local v14
    .local v21, "r0":Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " :"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 192
    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 223
    .end local v0
    .end local v21
    .restart local v14
    :catch_1
    move-exception v0

    move-object/from16 v21, v14

    .end local v14
    .restart local v21
    goto/16 :goto_9

    .end local v20
    .end local v21
    .restart local v13
    .restart local v14
    :catch_2
    move-exception v0

    move/from16 v20, v13

    move-object/from16 v21, v14

    .end local v13
    .end local v14
    .restart local v20
    .restart local v21
    goto/16 :goto_9

    .line 194
    .end local v19
    .end local v20
    .end local v21
    .restart local v0
    .restart local v7
    .restart local v13
    .restart local v14
    :cond_a
    move-object/from16 v19, v7

    move/from16 v20, v13

    move-object/from16 v21, v14

    .end local v7
    .end local v13
    .end local v14
    .restart local v19
    .restart local v20
    .restart local v21
    :goto_5
    invoke-interface {v2, v0}, Ljavax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v7

    move-object v0, v7

    goto :goto_6

    .line 196
    .end local v19
    .end local v20
    .end local v21
    .restart local v7
    .restart local v13
    .restart local v14
    :cond_b
    move-object/from16 v19, v7

    move/from16 v20, v13

    move-object/from16 v21, v14

    .end local v7
    .end local v13
    .end local v14
    .restart local v19
    .restart local v20
    .restart local v21
    :goto_6
    if-nez v0, :cond_d

    .line 197
    iget-boolean v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v7, :cond_c

    .line 198
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v8, "IMAP SASL DEBUG: no response"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    :cond_c
    invoke-virtual {v5, v11}, Ljava/io/OutputStream;->write([B)V

    .line 200
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 201
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_8

    .line 203
    :cond_d
    iget-boolean v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v7, :cond_e

    .line 204
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "IMAP SASL DEBUG: response: "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    array-length v13, v0

    const/4 v14, 0x0

    invoke-static {v0, v14, v13}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " :"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 204
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    :cond_e
    invoke-static {v0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v7

    move-object v0, v7

    .line 207
    if-eqz v4, :cond_f

    .line 208
    const-string v7, "XGWTRUSTEDAPP "

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 209
    :cond_f
    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 211
    invoke-virtual {v6, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 212
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 213
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 214
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_8

    .line 216
    .end local v0
    .end local v19
    .end local v20
    .end local v21
    .restart local v7
    .restart local v13
    .restart local v14
    :cond_10
    move-object/from16 v19, v7

    move/from16 v20, v13

    move-object/from16 v21, v14

    .end local v7
    .end local v13
    .end local v14
    .restart local v19
    .restart local v20
    .restart local v21
    invoke-virtual {v12}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v12}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 218
    const/4 v13, 0x1

    goto :goto_7

    .line 219
    :cond_11
    invoke-virtual {v12}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 220
    const/4 v13, 0x1

    .end local v19
    .end local v20
    .end local v21
    .restart local v7
    .restart local v13
    .restart local v14
    :goto_7
    goto :goto_a

    .line 222
    .end local v7
    .end local v13
    .end local v14
    .restart local v19
    .restart local v20
    .restart local v21
    :cond_12
    invoke-virtual {v10, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 182
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_8
    move-object/from16 v7, v19

    move/from16 v13, v20

    goto :goto_b

    .line 223
    :catch_3
    move-exception v0

    goto :goto_9

    .end local v19
    .end local v20
    .end local v21
    .restart local v7
    .restart local v13
    .restart local v14
    :catch_4
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v13

    move-object/from16 v21, v14

    .line 224
    .end local v7
    .end local v13
    .end local v14
    .local v0, "ioex":Ljava/lang/Exception;
    .restart local v19
    .restart local v20
    .restart local v21
    :goto_9
    :try_start_c
    iget-boolean v7, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v7, :cond_13

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    :cond_13
    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v7

    move-object v12, v7

    .line 228
    const/4 v13, 0x1

    .line 182
    .end local v0
    .end local v19
    .end local v20
    .end local v21
    .restart local v7
    .restart local v13
    .restart local v14
    :goto_a
    move-object/from16 v7, v19

    :goto_b
    move-object/from16 v14, v21

    const/4 v8, 0x0

    goto/16 :goto_2

    .line 156
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .local v11, "tag":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v21, v14

    .line 157
    .end local v7
    .end local v14
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v19
    .restart local v21
    iget-boolean v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v3, :cond_14

    .line 158
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMAP SASL DEBUG: AUTHENTICATE Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    :cond_14
    monitor-exit v9

    const/4 v3, 0x0

    return v3

    .line 138
    .end local v0
    .end local v2
    .end local v19
    .end local v21
    .restart local v7
    .restart local v14
    :catch_6
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v21, v14

    .end local v7
    .end local v14
    .restart local v19
    .restart local v21
    goto :goto_c

    .end local v17
    .end local v19
    .end local v21
    .local v6, "p0":Ljava/lang/String;
    .restart local v7
    .restart local v14
    :catch_7
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v21, v14

    .line 139
    .end local v6
    .end local v7
    .end local v14
    .local v0, "sex":Ljavax/security/sasl/SaslException;
    .restart local v17
    .restart local v19
    .restart local v21
    :goto_c
    iget-boolean v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v2, :cond_15

    .line 140
    iget-object v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IMAP SASL DEBUG: Failed to create SASL client: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    :cond_15
    monitor-exit v9

    const/4 v2, 0x0

    return v2

    .line 80
    .end local v0
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v15
    .end local v17
    .end local v19
    .end local v21
    :catchall_0
    move-exception v0

    monitor-exit v9

    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method
