.class public Lcom/readboy/encrypt/EncryptReader;
.super Ljava/io/InputStream;
.source "EncryptReader.java"


# instance fields
.field private buff:[B

.field private current:I

.field private fis:Ljava/io/FileInputStream;

.field private length:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/readboy/encrypt/EncryptReader;->current:I

    .line 20
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/readboy/encrypt/EncryptReader;->fis:Ljava/io/FileInputStream;

    .line 21
    iget-object v0, p0, Lcom/readboy/encrypt/EncryptReader;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    iput v0, p0, Lcom/readboy/encrypt/EncryptReader;->length:I

    .line 22
    iget v0, p0, Lcom/readboy/encrypt/EncryptReader;->length:I

    if-lez v0, :cond_1

    .line 23
    iget v0, p0, Lcom/readboy/encrypt/EncryptReader;->length:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/readboy/encrypt/EncryptReader;->buff:[B

    .line 24
    iget-object v0, p0, Lcom/readboy/encrypt/EncryptReader;->fis:Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/readboy/encrypt/EncryptReader;->buff:[B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 25
    iget-object v0, p0, Lcom/readboy/encrypt/EncryptReader;->buff:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/readboy/encrypt/Encrypt;->nativeEndec([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/encrypt/EncryptReader;->buff:[B

    .line 26
    iget-object v0, p0, Lcom/readboy/encrypt/EncryptReader;->buff:[B

    if-eqz v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "internal encryption error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/readboy/encrypt/EncryptReader;->length:I

    return v0
.end method

.method public close()V
    .locals 1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/readboy/encrypt/EncryptReader;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 44
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 45
    .end local v0
    :goto_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    iget v0, p0, Lcom/readboy/encrypt/EncryptReader;->current:I

    iget v1, p0, Lcom/readboy/encrypt/EncryptReader;->length:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/readboy/encrypt/EncryptReader;->buff:[B

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/readboy/encrypt/EncryptReader;->buff:[B

    iget v1, p0, Lcom/readboy/encrypt/EncryptReader;->current:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/readboy/encrypt/EncryptReader;->current:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 13
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method
