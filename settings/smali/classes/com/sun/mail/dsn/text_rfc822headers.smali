.class public Lcom/sun/mail/dsn/text_rfc822headers;
.super Ljava/lang/Object;
.source "text_rfc822headers.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# static fields
.field private static myDF:Ljavax/activation/ActivationDataFlavor;

.field private static myDFs:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    .line 56
    const-class v1, Lcom/sun/mail/dsn/MessageHeaders;

    .line 57
    const-string v2, "text/rfc822-headers"

    .line 58
    const-string v3, "RFC822 headers"

    .line 55
    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDF:Ljavax/activation/ActivationDataFlavor;

    .line 59
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    .line 60
    const-class v1, Ljava/lang/String;

    .line 61
    const-string v2, "text/rfc822-headers"

    .line 62
    const-string v3, "RFC822 headers"

    .line 59
    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 188
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    const-string v1, "charset"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "charset":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 192
    const-string v2, "us-ascii"

    move-object v1, v2

    .line 193
    :cond_0
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 194
    .end local v0
    .end local v1
    :catch_0
    move-exception v0

    .line 195
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getStringContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 8
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "enc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 106
    .local v1, "is":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/dsn/text_rfc822headers;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 107
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 120
    .end local v1
    .local v2, "is":Ljava/io/InputStreamReader;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 122
    .local v1, "pos":I
    const/16 v3, 0x400

    new-array v3, v3, [C

    .line 124
    .local v3, "buf":[C
    :cond_0
    :goto_0
    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v4

    move v5, v4

    .local v5, "count":I
    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v4, v6, :cond_1

    .line 137
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v7, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 124
    :cond_1
    nop

    .line 125
    add-int/2addr v1, v5

    .line 126
    array-length v4, v3

    if-lt v1, v4, :cond_0

    .line 127
    array-length v4, v3

    .line 128
    .local v4, "size":I
    const/high16 v6, 0x40000

    if-ge v4, v6, :cond_2

    .line 129
    add-int/2addr v4, v4

    goto :goto_1

    .line 131
    :cond_2
    add-int/2addr v4, v6

    .line 132
    :goto_1
    new-array v6, v4, [C

    .line 133
    .local v6, "tbuf":[C
    invoke-static {v3, v7, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    move-object v3, v6

    .end local v4
    .end local v5
    .end local v6
    goto :goto_0

    .line 108
    .end local v2
    .end local v3
    .local v1, "is":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v2

    .line 117
    .local v2, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v3, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 4
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    :try_start_0
    new-instance v0, Lcom/sun/mail/dsn/MessageHeaders;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/mail/dsn/MessageHeaders;-><init>(Ljava/io/InputStream;)V

    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "mex":Ljavax/mail/MessagingException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception creating MessageHeaders: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 84
    sget-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDF:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, p2}, Lcom/sun/mail/dsn/text_rfc822headers;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    sget-object v0, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-direct {p0, p2}, Lcom/sun/mail/dsn/text_rfc822headers;->getStringContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 89
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .locals 3

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    sget-object v1, Lcom/sun/mail/dsn/text_rfc822headers;->myDF:Ljavax/activation/ActivationDataFlavor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    instance-of v0, p1, Lcom/sun/mail/dsn/MessageHeaders;

    if-eqz v0, :cond_1

    .line 146
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/dsn/MessageHeaders;

    .line 148
    .local v0, "mh":Lcom/sun/mail/dsn/MessageHeaders;
    :try_start_0
    invoke-virtual {v0, p3}, Lcom/sun/mail/dsn/MessageHeaders;->writeTo(Ljava/io/OutputStream;)V

    .line 156
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "mex":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object v2

    .line 151
    .local v2, "ex":Ljava/lang/Exception;
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_0

    .line 152
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 154
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception writing headers: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    .end local v0
    .end local v1
    .end local v2
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "enc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 167
    .local v1, "osw":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-direct {p0, p2}, Lcom/sun/mail/dsn/text_rfc822headers;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 168
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 181
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 182
    .local v2, "s":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 183
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 184
    return-void

    .line 169
    .end local v2
    :catch_1
    move-exception v2

    .line 178
    .local v2, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v3, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    .end local v0
    .end local v1
    .end local v2
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sun/mail/dsn/text_rfc822headers;->myDFs:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v2}, Ljavax/activation/ActivationDataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v2, "\" DataContentHandler requires String object, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v2, "was given object of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
