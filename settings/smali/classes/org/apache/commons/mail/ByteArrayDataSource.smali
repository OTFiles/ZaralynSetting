.class public Lorg/apache/commons/mail/ByteArrayDataSource;
.super Ljava/lang/Object;
.source "ByteArrayDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x200


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private name:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "aIs"    # Ljava/io/InputStream;
    .param p2, "aType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lorg/apache/commons/mail/ByteArrayDataSource;->byteArrayDataSource(Ljava/io/InputStream;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "aType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 119
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    .line 123
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    const-string v1, "iso-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 124
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 125
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 133
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 138
    :cond_0
    return-void

    .line 133
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The Character Encoding is not supported."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    throw v0
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "aType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    .line 78
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    .line 79
    invoke-direct {p0, v0}, Lorg/apache/commons/mail/ByteArrayDataSource;->byteArrayDataSource(Ljava/io/InputStream;)V

    .line 83
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 88
    return-void

    .line 83
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_0
    throw v1
.end method

.method private byteArrayDataSource(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "aIs"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 154
    .local v1, "osWriter":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 155
    .local v2, "length":I
    const/16 v3, 0x200

    :try_start_0
    new-array v3, v3, [B

    .line 157
    .local v3, "buffer":[B
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v4

    .line 158
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    .line 159
    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v4

    .line 162
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    move v2, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 164
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 167
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 172
    .end local v2
    .end local v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 174
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 176
    iget-object v2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 180
    :cond_1
    nop

    .line 182
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 185
    return-void

    .line 172
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 176
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_3

    .line 178
    iget-object v3, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 180
    :cond_3
    if-eqz v1, :cond_4

    .line 182
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_4
    throw v2
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "application/octet-stream"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 211
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 248
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    .line 249
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 225
    return-void
.end method
