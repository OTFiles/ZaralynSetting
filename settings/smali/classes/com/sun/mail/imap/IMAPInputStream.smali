.class public Lcom/sun/mail/imap/IMAPInputStream;
.super Ljava/io/InputStream;
.source "IMAPInputStream.java"


# static fields
.field private static final slop:I = 0x40


# instance fields
.field private blksize:I

.field private buf:[B

.field private bufcount:I

.field private bufpos:I

.field private max:I

.field private msg:Lcom/sun/mail/imap/IMAPMessage;

.field private peek:Z

.field private pos:I

.field private readbuf:Lcom/sun/mail/iap/ByteArray;

.field private section:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "msg"    # Lcom/sun/mail/imap/IMAPMessage;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "peek"    # Z

    .line 77
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    .line 80
    iput-object p2, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    .line 81
    iput p3, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    .line 82
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    .line 84
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    .line 85
    return-void
.end method

.method private checkSeen()V
    .locals 4

    .line 253
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v0, :cond_0

    .line 254
    return-void

    .line 256
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    .line 257
    .local v0, "f":Ljavax/mail/Folder;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/mail/Folder;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 258
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v3, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/IMAPMessage;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v3, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v3, v2}, Lcom/sun/mail/imap/IMAPMessage;->setFlag(Ljavax/mail/Flags$Flag;Z)V

    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v0
    :catch_0
    move-exception v0

    .line 263
    :cond_1
    :goto_0
    return-void
.end method

.method private fill()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-lt v0, v2, :cond_1

    .line 120
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    .line 123
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x0

    .line 127
    .local v0, "b":Lcom/sun/mail/imap/protocol/BODY;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    if-nez v2, :cond_2

    .line 128
    new-instance v2, Lcom/sun/mail/iap/ByteArray;

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    add-int/lit8 v3, v3, 0x40

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ByteArray;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    .line 137
    .local v4, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v3

    if-nez v3, :cond_7

    .line 141
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v5

    .line 142
    .local v5, "seqnum":I
    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    .line 143
    .local v3, "cnt":I
    iget v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-eq v6, v1, :cond_3

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    add-int/2addr v1, v6

    iget v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-le v1, v6, :cond_3

    .line 144
    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    iget v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    sub-int/2addr v1, v6

    .end local v3
    .local v1, "cnt":I
    goto :goto_0

    .line 145
    .end local v1
    .restart local v3
    :cond_3
    move v1, v3

    .end local v3
    .restart local v1
    :goto_0
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v3, :cond_4

    .line 146
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v7, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v9, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    .line 148
    :cond_4
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v9, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v11, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    move-object v6, v4

    move v7, v5

    move v10, v1

    invoke-virtual/range {v6 .. v11}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v3

    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/mail/FolderClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 157
    .end local v1
    .end local v4
    .end local v5
    :goto_1
    if-eqz v0, :cond_6

    :try_start_1
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v1

    move-object v3, v1

    .local v3, "ba":Lcom/sun/mail/iap/ByteArray;
    if-eqz v1, :cond_6

    .line 159
    nop

    .line 132
    monitor-exit v2

    .line 164
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v1, :cond_5

    .line 165
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    .line 168
    :cond_5
    invoke-virtual {v3}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    .line 169
    invoke-virtual {v3}, Lcom/sun/mail/iap/ByteArray;->getStart()I

    move-result v1

    iput v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    .line 170
    invoke-virtual {v3}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v1

    .line 172
    .local v1, "n":I
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    .line 173
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    .line 174
    return-void

    .line 158
    .end local v1
    .end local v3
    :cond_6
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    .line 159
    new-instance v1, Ljava/io/IOException;

    const-string v3, "No content"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    .restart local v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :try_start_3
    new-instance v1, Lcom/sun/mail/util/MessageRemovedIOException;

    .line 139
    const-string v3, "No content for expunged message"

    .line 138
    invoke-direct {v1, v3}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    .end local v4
    :try_end_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/mail/FolderClosedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "fex":Ljavax/mail/FolderClosedException;
    :try_start_4
    new-instance v3, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v4

    .line 154
    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-direct {v3, v4, v5}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    .line 149
    .end local v1
    :catch_1
    move-exception v1

    .line 150
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    .line 151
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    .end local v1
    :goto_2
    monitor-exit v2

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private forceCheckExpunged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/util/MessageRemovedIOException;,
            Lcom/sun/mail/util/FolderClosedIOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/mail/FolderClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 93
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 106
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    return-void

    .line 107
    :cond_0
    new-instance v0, Lcom/sun/mail/util/MessageRemovedIOException;

    invoke-direct {v0}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>()V

    throw v0

    .line 99
    :catch_1
    move-exception v1

    .line 100
    .local v1, "fex":Ljavax/mail/FolderClosedException;
    :try_start_2
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    .line 101
    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-direct {v2, v3, v4}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 96
    .end local v1
    :catch_2
    move-exception v1

    .line 97
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    .line 98
    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-direct {v2, v3, v4}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v1
    :goto_1
    monitor-exit v0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 181
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    if-lt v0, v1, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    .line 183
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 184
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 186
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    aget-byte v0, v0, v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/imap/IMAPInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 206
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    sub-int/2addr v0, v1

    .line 207
    .local v0, "avail":I
    if-gtz v0, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    .line 209
    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    .line 210
    .end local v0
    .local v1, "avail":I
    if-gtz v1, :cond_0

    .line 211
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 213
    :cond_0
    move v0, v1

    .end local v1
    .restart local v0
    :cond_1
    if-ge v0, p3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, p3

    .line 214
    .local v1, "cnt":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    .line 216
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 205
    .end local v0
    .end local v1
    .end local p1
    .end local p2
    .end local p3
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method
