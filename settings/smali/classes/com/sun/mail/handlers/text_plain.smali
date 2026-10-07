.class public Lcom/sun/mail/handlers/text_plain;
.super Ljava/lang/Object;
.source "text_plain.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# static fields
.field private static myDF:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    .line 55
    const-class v1, Ljava/lang/String;

    .line 56
    const-string v2, "text/plain"

    .line 57
    const-string v3, "Text String"

    .line 54
    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/handlers/text_plain;->myDF:Ljavax/activation/ActivationDataFlavor;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 169
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    const-string v1, "charset"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "charset":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 173
    const-string v2, "us-ascii"

    move-object v1, v2

    .line 174
    :cond_0
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 175
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 8
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "enc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 94
    .local v1, "is":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/handlers/text_plain;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 95
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v2

    .line 109
    const/4 v2, 0x0

    .line 111
    .local v2, "pos":I
    const/16 v3, 0x400

    :try_start_1
    new-array v3, v3, [C

    .line 113
    .local v3, "buf":[C
    :cond_0
    :goto_0
    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v4

    move v5, v4

    .local v5, "count":I
    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v4, v6, :cond_1

    .line 126
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v7, v2}, Ljava/lang/String;-><init>([CII)V

    .line 129
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 130
    .end local v2
    .end local v3
    .end local v5
    :catch_0
    move-exception v2

    .line 126
    :goto_1
    return-object v4

    .line 113
    .restart local v2
    .restart local v3
    .restart local v5
    :cond_1
    nop

    .line 114
    add-int/2addr v2, v5

    .line 115
    :try_start_3
    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 116
    array-length v4, v3

    .line 117
    .local v4, "size":I
    const/high16 v6, 0x40000

    if-ge v4, v6, :cond_2

    .line 118
    add-int/2addr v4, v4

    goto :goto_2

    .line 120
    :cond_2
    add-int/2addr v4, v6

    .line 121
    :goto_2
    new-array v6, v4, [C

    .line 122
    .local v6, "tbuf":[C
    invoke-static {v3, v7, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v6

    .end local v4
    .end local v5
    .end local v6
    goto :goto_0

    .line 127
    .end local v2
    .end local v3
    :catchall_0
    move-exception v2

    .line 129
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 130
    :catch_1
    move-exception v3

    .line 131
    :goto_3
    throw v2

    .line 96
    :catch_2
    move-exception v2

    .line 105
    .local v2, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v3, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getDF()Ljavax/activation/ActivationDataFlavor;
    .locals 1

    .line 60
    sget-object v0, Lcom/sun/mail/handlers/text_plain;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-object v0
.end method

.method public getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 1
    .param p1, "df"    # Lmyjava/awt/datatransfer/DataFlavor;
    .param p2, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/sun/mail/handlers/text_plain;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, p2}, Lcom/sun/mail/handlers/text_plain;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .locals 3

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0}, Lcom/sun/mail/handlers/text_plain;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "enc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 148
    .local v1, "osw":Ljava/io/OutputStreamWriter;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sun/mail/handlers/text_plain;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 149
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 162
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 163
    .local v2, "s":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 164
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 165
    return-void

    .line 150
    .end local v2
    :catch_0
    move-exception v2

    .line 159
    .local v2, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v3, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    .end local v0
    .end local v1
    .end local v2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/handlers/text_plain;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/activation/ActivationDataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v2, "\" DataContentHandler requires String object, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v2, "was given object of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
