.class public Lcom/readboy/encrypt/EncryptWriter;
.super Ljava/lang/Object;
.source "EncryptWriter.java"


# instance fields
.field private fos:Ljava/io/FileOutputStream;

.field private msb:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/readboy/encrypt/EncryptWriter;->msb:Ljava/lang/StringBuffer;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/encrypt/EncryptWriter;->fos:Ljava/io/FileOutputStream;

    .line 11
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/readboy/encrypt/EncryptWriter;->fos:Ljava/io/FileOutputStream;

    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/readboy/encrypt/EncryptWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/readboy/encrypt/EncryptWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 34
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/readboy/encrypt/EncryptWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/readboy/encrypt/EncryptWriter;->msb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/readboy/encrypt/EncryptWriter;->msb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gbk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 22
    .local v0, "data":[B
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/readboy/encrypt/Encrypt;->nativeEndec([BI)[B

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/readboy/encrypt/EncryptWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 27
    iget-object v1, p0, Lcom/readboy/encrypt/EncryptWriter;->msb:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .end local v0
    goto :goto_0

    .line 24
    .restart local v0
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "internal encryption error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    .end local v0
    :cond_1
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/readboy/encrypt/EncryptWriter;->msb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    return-void
.end method
