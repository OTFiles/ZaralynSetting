.class public Lcom/sun/mail/iap/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# static fields
.field private static final CRLF:[B


# instance fields
.field private connected:Z

.field protected debug:Z

.field private volatile handlers:Ljava/util/Vector;

.field protected host:Ljava/lang/String;

.field private volatile input:Lcom/sun/mail/iap/ResponseInputStream;

.field protected out:Ljava/io/PrintStream;

.field private volatile output:Ljava/io/DataOutputStream;

.field protected prefix:Ljava/lang/String;

.field protected props:Ljava/util/Properties;

.field protected quote:Z

.field private socket:Ljava/net/Socket;

.field private tagCounter:I

.field private volatile timestamp:J

.field private traceInput:Lcom/sun/mail/util/TraceInputStream;

.field private traceOutput:Lcom/sun/mail/util/TraceOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/iap/Protocol;->CRLF:[B

    .line 60
    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "debug"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->connected:Z

    .line 77
    iput v0, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    .line 148
    const-string v1, "localhost"

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->host:Ljava/lang/String;

    .line 149
    iput-boolean p3, p0, Lcom/sun/mail/iap/Protocol;->debug:Z

    .line 150
    iput-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    .line 151
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->out:Ljava/io/PrintStream;

    .line 154
    new-instance v0, Lcom/sun/mail/util/TraceInputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, p1, v1}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    .line 155
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-virtual {v0, p3}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 156
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 157
    new-instance v0, Lcom/sun/mail/iap/ResponseInputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ResponseInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->input:Lcom/sun/mail/iap/ResponseInputStream;

    .line 159
    new-instance v0, Lcom/sun/mail/util/TraceOutputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, p2, v1}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    .line 160
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, p3}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 161
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    .line 162
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "debug"    # Z
    .param p4, "out"    # Ljava/io/PrintStream;
    .param p5, "props"    # Ljava/util/Properties;
    .param p6, "prefix"    # Ljava/lang/String;
    .param p7, "isSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->connected:Z

    .line 77
    iput v0, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    .line 101
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/iap/Protocol;->host:Ljava/lang/String;

    .line 102
    iput-boolean p3, p0, Lcom/sun/mail/iap/Protocol;->debug:Z

    .line 103
    iput-object p4, p0, Lcom/sun/mail/iap/Protocol;->out:Ljava/io/PrintStream;

    .line 104
    iput-object p5, p0, Lcom/sun/mail/iap/Protocol;->props:Ljava/util/Properties;

    .line 105
    iput-object p6, p0, Lcom/sun/mail/iap/Protocol;->prefix:Ljava/lang/String;

    .line 107
    invoke-static {p1, p2, p5, p6, p7}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    .line 108
    const-string v1, "mail.debug.quote"

    invoke-virtual {p5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    .line 111
    invoke-direct {p0, p4}, Lcom/sun/mail/iap/Protocol;->initStreams(Ljava/io/PrintStream;)V

    .line 114
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/Protocol;->processGreeting(Lcom/sun/mail/iap/Response;)V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J

    .line 118
    iput-boolean v2, p0, Lcom/sun/mail/iap/Protocol;->connected:Z

    .line 126
    .end local v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->connected:Z

    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    .line 129
    :cond_1
    return-void

    .line 119
    :catchall_0
    move-exception v0

    .line 126
    iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->connected:Z

    if-nez v1, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    .line 128
    :cond_2
    throw v0
.end method

.method private initStreams(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/sun/mail/util/TraceInputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    .line 133
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->debug:Z

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 134
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 135
    new-instance v0, Lcom/sun/mail/iap/ResponseInputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ResponseInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->input:Lcom/sun/mail/iap/ResponseInputStream;

    .line 137
    new-instance v0, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    .line 138
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->debug:Z

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 139
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    .line 140
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    .line 141
    return-void
.end method


# virtual methods
.method public declared-synchronized addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    .locals 1
    .param p1, "h"    # Lcom/sun/mail/iap/ResponseHandler;

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 182
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 178
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/sun/mail/iap/Argument;

    monitor-enter p0

    .line 291
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 292
    .local v0, "v":Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 293
    .local v1, "done":Z
    const/4 v2, 0x0

    .line 294
    .local v2, "tag":Ljava/lang/String;
    const/4 v3, 0x0

    .line 298
    .local v3, "r":Lcom/sun/mail/iap/Response;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/iap/Protocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v4

    :try_end_1
    .catch Lcom/sun/mail/iap/LiteralException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    goto :goto_0

    .line 302
    :catch_0
    move-exception v4

    .line 304
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 305
    const/4 v1, 0x1

    .line 308
    .end local v4
    goto :goto_0

    .line 299
    :catch_1
    move-exception v4

    .line 300
    .local v4, "lex":Lcom/sun/mail/iap/LiteralException;
    invoke-virtual {v4}, Lcom/sun/mail/iap/LiteralException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 301
    const/4 v1, 0x1

    .line 308
    .end local v4
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sun/mail/iap/Response;

    .line 329
    .local v4, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {v0, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J

    .line 331
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v4

    .line 310
    .end local v4
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v4

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v4

    goto :goto_1

    .line 314
    :catch_2
    move-exception v4

    .line 315
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    goto :goto_0

    .line 311
    .end local v4
    :catch_3
    move-exception v4

    .line 313
    .local v4, "ioex":Ljava/io/IOException;
    :try_start_4
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v5

    move-object v3, v5

    .line 318
    .end local v4
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 320
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    const/4 v1, 0x1

    .line 324
    :cond_2
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_0

    .line 325
    const/4 v1, 0x1

    goto :goto_0

    .line 290
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local p1
    .end local p2
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method protected declared-synchronized disconnect()V
    .locals 1

    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 384
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 388
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    .line 390
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 396
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 397
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    .line 398
    return-void
.end method

.method protected getInputStream()Lcom/sun/mail/iap/ResponseInputStream;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->input:Lcom/sun/mail/iap/ResponseInputStream;

    return-object v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method protected getResponseBuffer()Lcom/sun/mail/iap/ByteArray;
    .locals 1

    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 172
    iget-wide v0, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J

    return-wide v0
.end method

.method public handleResult(Lcom/sun/mail/iap/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 338
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    return-void

    .line 340
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v0

    if-nez v0, :cond_3

    .line 342
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    return-void

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    .line 346
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V

    throw v0

    .line 343
    :cond_2
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    invoke-direct {v0, p1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw v0

    .line 341
    :cond_3
    new-instance v0, Lcom/sun/mail/iap/CommandFailedException;

    invoke-direct {v0, p1}, Lcom/sun/mail/iap/CommandFailedException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw v0
.end method

.method public notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
    .locals 6
    .param p1, "responses"    # [Lcom/sun/mail/iap/Response;

    .line 196
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 218
    .end local v0
    return-void

    .line 200
    .restart local v0
    :cond_1
    aget-object v1, p1, v0

    .line 203
    .local v1, "r":Lcom/sun/mail/iap/Response;
    if-nez v1, :cond_2

    .line 204
    goto :goto_2

    .line 206
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 207
    .local v2, "size":I
    if-nez v2, :cond_3

    .line 208
    return-void

    .line 211
    :cond_3
    new-array v3, v2, [Ljava/lang/Object;

    .line 212
    .local v3, "h":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 215
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-lt v4, v2, :cond_4

    .line 199
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .restart local v1
    .restart local v2
    .restart local v3
    .restart local v4
    :cond_4
    aget-object v5, v3, v4

    check-cast v5, Lcom/sun/mail/iap/ResponseHandler;

    invoke-interface {v5, v1}, Lcom/sun/mail/iap/ResponseHandler;->handleResponse(Lcom/sun/mail/iap/Response;)V

    .line 215
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected processGreeting(Lcom/sun/mail/iap/Response;)V
    .locals 1
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 221
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    return-void

    .line 222
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V

    throw v0
.end method

.method public readResponse()Lcom/sun/mail/iap/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 249
    new-instance v0, Lcom/sun/mail/iap/Response;

    invoke-direct {v0, p0}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Protocol;)V

    return-object v0
.end method

.method public declared-synchronized removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    .locals 1
    .param p1, "h"    # Lcom/sun/mail/iap/ResponseHandler;

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 190
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 187
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/sun/mail/iap/Argument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/iap/Protocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 360
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/Protocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 363
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/iap/Protocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 364
    return-void
.end method

.method public declared-synchronized startTLS(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 373
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/iap/Protocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 374
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->props:Ljava/util/Properties;

    iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->prefix:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    .line 375
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Lcom/sun/mail/iap/Protocol;->initStreams(Ljava/io/PrintStream;)V

    .line 376
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 372
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method protected declared-synchronized supportsNonSyncLiterals()Z
    .locals 1

    monitor-enter p0

    .line 244
    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/sun/mail/iap/Argument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 271
    if-eqz p2, :cond_0

    .line 272
    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 273
    invoke-virtual {p2, p0}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    sget-object v2, Lcom/sun/mail/iap/Protocol;->CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 277
    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 278
    return-object v0
.end method
