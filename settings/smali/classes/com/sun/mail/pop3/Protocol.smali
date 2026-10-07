.class Lcom/sun/mail/pop3/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final POP3_PORT:I = 0x6e

.field private static digits:[C


# instance fields
.field private apopChallenge:Ljava/lang/String;

.field private debug:Z

.field private input:Ljava/io/DataInputStream;

.field private out:Ljava/io/PrintStream;

.field private output:Ljava/io/PrintWriter;

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 186
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 187
    nop

    .line 188
    nop

    .line 186
    sput-object v0, Lcom/sun/mail/pop3/Protocol;->digits:[C

    .line 66
    return-void

    :array_0
    .array-data 2
        0x30S    # '0'
        0x31S    # '1'
        0x32S    # '2'
        0x33S    # '3'
        0x34S    # '4'
        0x35S    # '5'
        0x36S    # '6'
        0x37S    # '7'
        0x38S    # '8'
        0x39S    # '9'
        0x61S    # 'a'
        0x62S    # 'b'
        0x63S    # 'c'
        0x64S    # 'd'
        0x65S    # 'e'
        0x66S    # 'f'
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V
    .locals 17
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "debug"    # Z
    .param p4, "out"    # Ljava/io/PrintStream;
    .param p5, "props"    # Ljava/util/Properties;
    .param p6, "prefix"    # Ljava/lang/String;
    .param p7, "isSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 79
    move/from16 v6, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/sun/mail/pop3/Protocol;->debug:Z

    .line 74
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    .line 82
    iput-boolean v3, v1, Lcom/sun/mail/pop3/Protocol;->debug:Z

    .line 83
    iput-object v4, v1, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".apop.enable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "apop":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    move v9, v0

    .line 88
    .local v9, "enableAPOP":Z
    const/4 v0, -0x1

    move/from16 v10, p2

    if-ne v10, v0, :cond_1

    .line 89
    const/16 v10, 0x6e

    .line 90
    .end local p2
    .local v10, "port":I
    :cond_1
    if-eqz v3, :cond_2

    .line 91
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "DEBUG POP3: connecting to host \""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v12, "\", port "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", isSSL "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 91
    invoke-virtual {v4, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    move-object/from16 v11, p6

    goto/16 :goto_2

    .line 94
    :cond_2
    :goto_0
    move-object/from16 v11, p6

    :try_start_1
    invoke-static {v2, v10, v5, v11, v6}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v12

    iput-object v12, v1, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 96
    new-instance v12, Ljava/io/DataInputStream;

    .line 97
    new-instance v13, Ljava/io/BufferedInputStream;

    iget-object v14, v1, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v14}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    iput-object v12, v1, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    .line 98
    new-instance v12, Ljava/io/PrintWriter;

    .line 99
    new-instance v13, Ljava/io/BufferedWriter;

    .line 100
    new-instance v14, Ljava/io/OutputStreamWriter;

    iget-object v15, v1, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v15}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 101
    const-string v0, "iso-8859-1"

    .line 100
    invoke-direct {v14, v15, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 99
    invoke-direct {v13, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v12, v13}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 98
    iput-object v12, v1, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 104
    invoke-direct {v1, v7}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v0

    .line 109
    .local v7, "r":Lcom/sun/mail/pop3/Response;
    nop

    .line 113
    iget-boolean v0, v7, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v0, :cond_5

    .line 120
    if-eqz v9, :cond_4

    .line 121
    iget-object v0, v7, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v12, 0x3c

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 122
    .local v0, "challStart":I
    iget-object v12, v7, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v13, 0x3e

    invoke-virtual {v12, v13, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 123
    .local v12, "challEnd":I
    const/4 v13, -0x1

    if-eq v0, v13, :cond_3

    if-eq v12, v13, :cond_3

    .line 124
    iget-object v13, v7, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v13, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    .line 125
    :cond_3
    if-eqz v3, :cond_4

    .line 126
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "DEBUG POP3: APOP challenge: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    .end local v0
    .end local v12
    :cond_4
    return-void

    .line 115
    :cond_5
    :try_start_2
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    :goto_1
    new-instance v0, Ljava/io/IOException;

    const-string v12, "Connect failed"

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    .end local v7
    :catch_1
    move-exception v0

    :goto_2
    move-object v7, v0

    .line 107
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_3
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    :goto_3
    throw v7
.end method

.method private getDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 177
    .local v2, "md":Ljava/security/MessageDigest;
    const-string v3, "iso-8859-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 181
    .end local v2
    .local v1, "digest":[B
    nop

    .line 183
    invoke-static {v1}, Lcom/sun/mail/pop3/Protocol;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 180
    .end local v1
    :catch_0
    move-exception v2

    .line 181
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    return-object v1

    .line 178
    .end local v2
    :catch_1
    move-exception v2

    .line 179
    .local v2, "nsae":Ljava/security/NoSuchAlgorithmException;
    return-object v1
.end method

.method private multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 387
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v1, :cond_0

    .line 388
    return-object v0

    .line 390
    :cond_0
    new-instance v1, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;

    invoke-direct {v1, p2}, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;-><init>(I)V

    .line 391
    .local v1, "buf":Lcom/sun/mail/pop3/SharedByteArrayOutputStream;
    const/16 v2, 0xa

    .line 392
    .local v2, "lastb":I
    :goto_0
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    move v4, v3

    .local v4, "b":I
    if-gez v3, :cond_1

    goto :goto_1

    .line 393
    :cond_1
    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    const/16 v3, 0x2e

    if-ne v4, v3, :cond_6

    .line 394
    iget-boolean v3, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v3, :cond_2

    .line 395
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->write(I)V

    .line 396
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 397
    const/16 v3, 0xd

    if-ne v4, v3, :cond_6

    .line 398
    iget-boolean v3, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v3, :cond_3

    .line 399
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->write(I)V

    .line 401
    :cond_3
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 402
    iget-boolean v3, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v3, :cond_4

    .line 403
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->write(I)V

    .line 404
    nop

    .line 412
    :cond_4
    :goto_1
    if-ltz v4, :cond_5

    .line 414
    invoke-virtual {v1}, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;->toStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 415
    return-object v0

    .line 413
    :cond_5
    new-instance v3, Ljava/io/EOFException;

    const-string v5, "EOF on socket"

    invoke-direct {v3, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 407
    :cond_6
    invoke-virtual {v1, v4}, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;->write(I)V

    .line 408
    iget-boolean v3, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v3, :cond_7

    .line 409
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->write(I)V

    .line 410
    :cond_7
    move v2, v4

    .end local v4
    goto :goto_0
.end method

.method private simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_8

    .line 353
    if-eqz p1, :cond_1

    .line 354
    iget-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "C: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 357
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 362
    iget-boolean v1, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    const-string v2, "S: EOF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "EOF on socket"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_3
    iget-boolean v1, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v1, :cond_4

    .line 367
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "S: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    :cond_4
    new-instance v1, Lcom/sun/mail/pop3/Response;

    invoke-direct {v1}, Lcom/sun/mail/pop3/Response;-><init>()V

    .line 369
    .local v1, "r":Lcom/sun/mail/pop3/Response;
    const-string v2, "+OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 370
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    goto :goto_0

    .line 371
    :cond_5
    const-string v2, "-ERR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 372
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    .line 376
    :goto_0
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v3, v2

    .local v3, "i":I
    if-ltz v2, :cond_6

    .line 377
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    .line 378
    :cond_6
    return-object v1

    .line 374
    .end local v3
    :cond_7
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    .end local v0
    .end local v1
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Folder is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 195
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 197
    .local v0, "result":[C
    const/4 v1, 0x0

    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 202
    .end local v1
    .end local v2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 198
    .restart local v1
    .restart local v2
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    .line 199
    .local v3, "temp":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "i":I
    sget-object v5, Lcom/sun/mail/pop3/Protocol;->digits:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v0, v2

    .line 200
    .end local v2
    add-int/lit8 v2, v4, 0x1

    .restart local v2
    sget-object v5, Lcom/sun/mail/pop3/Protocol;->digits:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 197
    .end local v3
    .end local v4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized dele(I)Z
    .locals 2
    .param p1, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 292
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 293
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 291
    .end local v0
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

    .line 131
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->quit()Z

    .line 135
    :cond_0
    return-void
.end method

.method declared-synchronized list(I)I
    .locals 4
    .param p1, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 248
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LIST "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 249
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    const/4 v1, -0x1

    .line 250
    .local v1, "size":I
    iget-boolean v2, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 252
    :try_start_1
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 253
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 254
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    goto :goto_0

    .line 255
    .end local v2
    :catch_0
    move-exception v2

    .line 258
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 247
    .end local v0
    .end local v1
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method declared-synchronized list()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 265
    :try_start_0
    const-string v0, "LIST"

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 266
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 264
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method declared-synchronized login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "dpw":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APOP "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .local v1, "r":Lcom/sun/mail/pop3/Response;
    goto :goto_1

    .line 149
    .end local v1
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 150
    .restart local v1
    iget-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v2, :cond_3

    .line 151
    iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "USER command failed"

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v2

    .line 152
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PASS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v2

    move-object v1, v2

    .line 154
    :goto_1
    iget-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v2, :cond_5

    .line 155
    iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v2, "login failed"

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v2

    .line 156
    :cond_5
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 142
    .end local v0
    .end local v1
    .end local p1
    .end local p2
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method declared-synchronized noop()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 335
    :try_start_0
    const-string v0, "NOOP"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 336
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 334
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method declared-synchronized quit()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "ok":Z
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "QUIT"

    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v2

    .line 213
    .local v2, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v3, v2, Lcom/sun/mail/pop3/Response;->ok:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v0, v3

    .line 216
    .end local v2
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 218
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 219
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    .line 220
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 223
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit p0

    return v0

    .line 217
    :catchall_0
    move-exception v2

    .line 218
    :try_start_3
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 219
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    .line 220
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 221
    :goto_0
    throw v2

    .line 214
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_1
    move-exception v2

    .line 216
    :try_start_4
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 218
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 219
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    .line 220
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 222
    throw v2

    .line 217
    :catchall_2
    move-exception v2

    .line 218
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 219
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    .line 220
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    .line 209
    .end local v0
    :catchall_3
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method declared-synchronized retr(II)Ljava/io/InputStream;
    .locals 2
    .param p1, "msg"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 276
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RETR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 277
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 275
    .end local v0
    .end local p1
    .end local p2
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method declared-synchronized rset()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 343
    :try_start_0
    const-string v0, "RSET"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 344
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 342
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method declared-synchronized stat()Lcom/sun/mail/pop3/Status;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 231
    :try_start_0
    const-string v0, "STAT"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 232
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    new-instance v1, Lcom/sun/mail/pop3/Status;

    invoke-direct {v1}, Lcom/sun/mail/pop3/Status;-><init>()V

    .line 233
    .local v1, "s":Lcom/sun/mail/pop3/Status;
    iget-boolean v2, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 235
    :try_start_1
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 236
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/sun/mail/pop3/Status;->total:I

    .line 237
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/sun/mail/pop3/Status;->size:I

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    .end local v2
    :catch_0
    move-exception v2

    .line 241
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 230
    .end local v0
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method declared-synchronized top(II)Ljava/io/InputStream;
    .locals 2
    .param p1, "msg"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 284
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TOP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 285
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 283
    .end local v0
    .end local p1
    .end local p2
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method declared-synchronized uidl(I)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 300
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UIDL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 301
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 302
    monitor-exit p0

    return-object v2

    .line 303
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 304
    .local v1, "i":I
    if-lez v1, :cond_1

    .line 305
    iget-object v2, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 307
    :cond_1
    monitor-exit p0

    return-object v2

    .line 299
    .end local v0
    .end local v1
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method declared-synchronized uidl([Ljava/lang/String;)Z
    .locals 8
    .param p1, "uids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 315
    :try_start_0
    const-string v0, "UIDL"

    const/16 v1, 0xf

    array-length v2, p1

    mul-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 316
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 317
    monitor-exit p0

    return v2

    .line 318
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sun/mail/util/LineInputStream;

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-direct {v1, v3}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 319
    .local v1, "lis":Lcom/sun/mail/util/LineInputStream;
    const/4 v3, 0x0

    .line 320
    .local v3, "line":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 328
    monitor-exit p0

    return v5

    .line 321
    :cond_2
    const/16 v4, 0x20

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 322
    .local v4, "i":I
    if-lt v4, v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 323
    goto :goto_0

    .line 324
    :cond_3
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 325
    .local v5, "n":I
    if-lez v5, :cond_1

    array-length v6, p1

    if-gt v5, v6, :cond_1

    .line 326
    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v6

    .end local v4
    .end local v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 314
    .end local v0
    .end local v1
    .end local v3
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method
