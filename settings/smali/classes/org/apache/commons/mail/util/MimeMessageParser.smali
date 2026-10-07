.class public Lorg/apache/commons/mail/util/MimeMessageParser;
.super Ljava/lang/Object;
.source "MimeMessageParser.java"


# instance fields
.field private final attachmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/activation/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final cidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/activation/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private htmlContent:Ljava/lang/String;

.field private isMultiPart:Z

.field private final mimeMessage:Ljavax/mail/internet/MimeMessage;

.field private plainContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .locals 1
    .param p1, "message"    # Ljavax/mail/internet/MimeMessage;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->attachmentList:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->cidMap:Ljava/util/Map;

    .line 83
    iput-object p1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->isMultiPart:Z

    .line 85
    return-void
.end method

.method private getBaseMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fullMimeType"    # Ljava/lang/String;

    .line 449
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 450
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 452
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 454
    :cond_0
    return-object p1
.end method

.method private getContent(Ljava/io/InputStream;)[B
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 426
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 427
    .local v1, "isReader":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 429
    .local v2, "osWriter":Ljava/io/BufferedOutputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    move v4, v3

    .local v4, "ch":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 431
    invoke-virtual {v2, v4}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 435
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 436
    .local v3, "result":[B
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 438
    return-object v3
.end method

.method private isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z
    .locals 2
    .param p1, "part"    # Ljavax/mail/internet/MimePart;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0, p2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v1

    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 252
    .end local v0
    :catch_0
    move-exception v0

    .line 254
    .local v0, "ex":Ljavax/mail/internet/ParseException;
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private stripContentId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "contentId"    # Ljava/lang/String;

    .line 225
    if-nez p1, :cond_0

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\<\\>]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createDataSource(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)Ljavax/activation/DataSource;
    .locals 6
    .param p1, "parent"    # Ljavax/mail/Multipart;
    .param p2, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    .line 271
    .local v0, "dataHandler":Ljavax/activation/DataHandler;
    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v1

    .line 272
    .local v1, "dataSource":Ljavax/activation/DataSource;
    invoke-interface {v1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/mail/util/MimeMessageParser;->getBaseMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "contentType":Ljava/lang/String;
    invoke-interface {v1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/mail/util/MimeMessageParser;->getContent(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 274
    .local v3, "content":[B
    new-instance v4, Ljavax/mail/util/ByteArrayDataSource;

    invoke-direct {v4, v3, v2}, Ljavax/mail/util/ByteArrayDataSource;-><init>([BLjava/lang/String;)V

    .line 275
    .local v4, "result":Ljavax/mail/util/ByteArrayDataSource;
    invoke-virtual {p0, p2, v1}, Lorg/apache/commons/mail/util/MimeMessageParser;->getDataSourceName(Ljavax/mail/Part;Ljavax/activation/DataSource;)Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "dataSourceName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljavax/mail/util/ByteArrayDataSource;->setName(Ljava/lang/String;)V

    .line 278
    return-object v4
.end method

.method public findAttachmentByCid(Ljava/lang/String;)Ljavax/activation/DataSource;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->cidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/activation/DataSource;

    .line 378
    .local v0, "dataSource":Ljavax/activation/DataSource;
    return-object v0
.end method

.method public findAttachmentByName(Ljava/lang/String;)Ljavax/activation/DataSource;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/util/MimeMessageParser;->getAttachmentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 355
    invoke-virtual {p0}, Lorg/apache/commons/mail/util/MimeMessageParser;->getAttachmentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/activation/DataSource;

    .line 356
    .local v1, "dataSource":Ljavax/activation/DataSource;
    invoke-interface {v1}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    return-object v1

    .line 353
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v0
    .end local v1
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttachmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/activation/DataSource;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->attachmentList:Ljava/util/List;

    return-object v0
.end method

.method public getBcc()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/mail/Address;",
            ">;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    .line 126
    .local v0, "recipients":[Ljavax/mail/Address;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v1
.end method

.method public getCc()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/mail/Address;",
            ">;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    .line 116
    .local v0, "recipients":[Ljavax/mail/Address;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v1
.end method

.method public getContentIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->cidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSourceName(Ljavax/mail/Part;Ljavax/activation/DataSource;)Ljava/lang/String;
    .locals 2
    .param p1, "part"    # Ljavax/mail/Part;
    .param p2, "dataSource"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 393
    invoke-interface {p2}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 397
    :cond_0
    invoke-interface {p1}, Ljavax/mail/Part;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 400
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 402
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 406
    :cond_2
    const/4 v0, 0x0

    .line 409
    :goto_0
    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    .line 136
    .local v0, "addresses":[Ljavax/mail/Address;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 138
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getHtmlContent()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->htmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeMessage()Ljavax/mail/internet/MimeMessage;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    return-object v0
.end method

.method public getPlainContent()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->plainContent:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyTo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;

    move-result-object v0

    .line 150
    .local v0, "addresses":[Ljavax/mail/Address;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 152
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/mail/Address;",
            ">;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    .line 106
    .local v0, "recipients":[Ljavax/mail/Address;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v1
.end method

.method public hasAttachments()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->attachmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHtmlContent()Z
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->htmlContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPlainContent()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->plainContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultipart()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->isMultiPart:Z

    return v0
.end method

.method public parse()Lorg/apache/commons/mail/util/MimeMessageParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/mail/util/MimeMessageParser;->parse(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)V

    .line 96
    return-object p0
.end method

.method protected parse(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)V
    .locals 4
    .param p1, "parent"    # Ljavax/mail/Multipart;
    .param p2, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    const-string v0, "text/plain"

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/mail/util/MimeMessageParser;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->plainContent:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "attachment"

    .line 178
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getDisposition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->plainContent:Ljava/lang/String;

    goto :goto_1

    .line 184
    :cond_0
    const-string v0, "text/html"

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/mail/util/MimeMessageParser;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->htmlContent:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "attachment"

    .line 185
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getDisposition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->htmlContent:Ljava/lang/String;

    goto :goto_1

    .line 191
    :cond_1
    const-string v0, "multipart/*"

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/mail/util/MimeMessageParser;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->isMultiPart:Z

    .line 194
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Multipart;

    .line 195
    .local v0, "mp":Ljavax/mail/Multipart;
    invoke-virtual {v0}, Ljavax/mail/Multipart;->getCount()I

    move-result v1

    .line 199
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 201
    invoke-virtual {v0, v2}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v3

    check-cast v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/mail/util/MimeMessageParser;->parse(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v0
    .end local v1
    .end local v2
    :cond_2
    goto :goto_1

    .line 206
    :cond_3
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getContentID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/mail/util/MimeMessageParser;->stripContentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/mail/util/MimeMessageParser;->createDataSource(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)Ljavax/activation/DataSource;

    move-result-object v1

    .line 208
    .local v1, "ds":Ljavax/activation/DataSource;
    if-eqz v0, :cond_4

    .line 210
    iget-object v2, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->cidMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->attachmentList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v0
    .end local v1
    :goto_1
    return-void
.end method
