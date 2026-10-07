.class public Ljavax/mail/internet/MimePartDataSource;
.super Ljava/lang/Object;
.source "MimePartDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;
.implements Ljavax/mail/MessageAware;


# static fields
.field private static ignoreMultipartEncoding:Z


# instance fields
.field private context:Ljavax/mail/MessageContext;

.field protected part:Ljavax/mail/internet/MimePart;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z

    .line 71
    :try_start_0
    const-string v1, "mail.mime.ignoremultipartencoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    nop

    :cond_0
    sput-boolean v0, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z

    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v1
    :catch_0
    move-exception v0

    .line 57
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/MimePart;)V
    .locals 0
    .param p1, "part"    # Ljavax/mail/internet/MimePart;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    .line 84
    return-void
.end method

.method private static restrictEncoding(Ljava/lang/String;Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 3
    .param p0, "encoding"    # Ljava/lang/String;
    .param p1, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 130
    sget-boolean v0, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z

    if-eqz v0, :cond_6

    if-nez p0, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    const-string v0, "7bit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 134
    const-string v0, "8bit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 135
    const-string v0, "binary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 140
    return-object p0

    .line 148
    :cond_2
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    const-string v2, "multipart/*"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "message/*"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v2

    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    .line 150
    :cond_3
    const/4 v2, 0x0

    return-object v2

    .line 151
    .end local v1
    :catch_0
    move-exception v1

    .line 154
    :cond_4
    return-object p0

    .line 136
    .end local v0
    :cond_5
    :goto_0
    return-object p0

    .line 131
    :cond_6
    :goto_1
    return-object p0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 175
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-interface {v0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 181
    .local v0, "mex":Ljavax/mail/MessagingException;
    const-string v1, "application/octet-stream"

    return-object v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v0, v0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    .local v0, "is":Ljava/io/InputStream;
    :goto_0
    goto :goto_1

    .line 108
    .end local v0
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v0, v0, Ljavax/mail/internet/MimeMessage;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 111
    .restart local v0
    :goto_1
    nop

    .line 113
    iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-interface {v1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-static {v1, v2}, Ljavax/mail/internet/MimePartDataSource;->restrictEncoding(Ljava/lang/String;Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "encoding":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 115
    invoke-static {v0, v1}, Ljavax/mail/internet/MimeUtility;->decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 117
    :cond_1
    return-object v0

    .line 111
    .end local v0
    .end local v1
    :cond_2
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Unknown part"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 119
    .local v0, "mex":Ljavax/mail/MessagingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized getMessageContext()Ljavax/mail/MessageContext;
    .locals 2

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljavax/mail/MessageContext;

    iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-direct {v0, v1}, Ljavax/mail/MessageContext;-><init>(Ljavax/mail/Part;)V

    iput-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;

    .line 207
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 192
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v0, v0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 197
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/net/UnknownServiceException;

    invoke-direct {v0}, Ljava/net/UnknownServiceException;-><init>()V

    throw v0
.end method
