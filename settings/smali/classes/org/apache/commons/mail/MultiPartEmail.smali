.class public Lorg/apache/commons/mail/MultiPartEmail;
.super Lorg/apache/commons/mail/Email;
.source "MultiPartEmail.java"


# instance fields
.field private boolHasAttachments:Z

.field private container:Ljavax/mail/internet/MimeMultipart;

.field private initialized:Z

.field private primaryBodyPart:Ljavax/mail/BodyPart;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;-><init>()V

    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 3
    .param p1, "partContent"    # Ljava/lang/String;
    .param p2, "partContentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 103
    .local v0, "bodyPart":Ljavax/mail/BodyPart;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljavax/mail/BodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 109
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 111
    return-object p0

    .line 106
    :catch_0
    move-exception v1

    .line 108
    .local v1, "me":Ljavax/mail/MessagingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addPart(Ljavax/mail/internet/MimeMultipart;)Lorg/apache/commons/mail/Email;
    .locals 2
    .param p1, "multipart"    # Ljavax/mail/internet/MimeMultipart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/MultiPartEmail;->addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;

    move-result-object v0

    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "me":Ljavax/mail/MessagingException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;
    .locals 3
    .param p1, "multipart"    # Ljavax/mail/internet/MimeMultipart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 149
    .local v0, "bodyPart":Ljavax/mail/BodyPart;
    :try_start_0
    invoke-virtual {v0, p1}, Ljavax/mail/BodyPart;->setContent(Ljavax/mail/Multipart;)V

    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 155
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 157
    return-object p0

    .line 152
    :catch_0
    move-exception v1

    .line 154
    .local v1, "me":Ljavax/mail/MessagingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public attach(Ljava/io/File;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    new-instance v1, Ljavax/activation/FileDataSource;

    invoke-direct {v1, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    .line 284
    .local v1, "fds":Ljavax/activation/FileDataSource;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "attachment"

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v2

    return-object v2

    .line 279
    .end local v1
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot attach file \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 364
    const-string v0, "attachment"

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v0

    return-object v0
.end method

.method public attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 389
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 390
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 395
    .end local v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 397
    new-instance v0, Ljavax/activation/URLDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v0

    return-object v0

    .line 392
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL set:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 3
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 420
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    goto :goto_1

    .line 420
    :cond_0
    const/4 v0, 0x0

    .line 421
    .local v0, "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 427
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-eqz v0, :cond_2

    .line 435
    .end local v0
    nop

    .line 437
    const-string v0, "attachment"

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v0

    return-object v0

    .line 429
    .restart local v0
    :cond_2
    :try_start_1
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    const-string v2, "Invalid Datasource"

    invoke-direct {v1, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    .end local v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    nop

    .line 434
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    const-string v2, "Invalid Datasource"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 3
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 459
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-interface {p1}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object p2

    .line 463
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 466
    .local v0, "bodyPart":Ljavax/mail/BodyPart;
    :try_start_0
    invoke-virtual {v0, p4}, Ljavax/mail/BodyPart;->setDisposition(Ljava/lang/String;)V

    .line 467
    invoke-static {p2}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->setFileName(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0, p3}, Ljavax/mail/BodyPart;->setDescription(Ljava/lang/String;)V

    .line 469
    new-instance v1, Ljavax/activation/DataHandler;

    invoke-direct {v1, p1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 471
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 481
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 482
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/mail/MultiPartEmail;->setBoolHasAttachments(Z)V

    .line 484
    return-object p0

    .line 478
    :catch_0
    move-exception v1

    .line 480
    .local v1, "me":Ljavax/mail/MessagingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 473
    .end local v1
    :catch_1
    move-exception v1

    .line 476
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public attach(Lorg/apache/commons/mail/EmailAttachment;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 8
    .param p1, "attachment"    # Lorg/apache/commons/mail/EmailAttachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 304
    const/4 v0, 0x0

    .line 306
    .local v0, "result":Lorg/apache/commons/mail/MultiPartEmail;
    if-eqz p1, :cond_2

    .line 311
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 313
    .local v1, "url":Ljava/net/URL;
    if-nez v1, :cond_1

    .line 315
    const/4 v2, 0x0

    .line 318
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 319
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 324
    new-instance v4, Ljavax/activation/FileDataSource;

    invoke-direct {v4, v3}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    .line 327
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getName()Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 329
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDisposition()Ljava/lang/String;

    move-result-object v7

    .line 325
    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v4

    move-object v0, v4

    .line 334
    .end local v3
    nop

    .line 335
    .end local v2
    goto :goto_0

    .line 322
    .restart local v2
    .restart local v3
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" does not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 331
    .end local v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    .line 333
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/apache/commons/mail/EmailException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot attach file \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 338
    .end local v2
    .end local v3
    :cond_1
    nop

    .line 341
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getName()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDisposition()Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    .line 308
    .end local v1
    :cond_2
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    const-string v2, "Invalid attachment supplied"

    invoke-direct {v1, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public buildMimeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 228
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getPrimaryBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 237
    .local v0, "body":Ljavax/mail/BodyPart;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    .line 245
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    .line 248
    .end local v0
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 253
    :cond_1
    invoke-super {p0}, Lorg/apache/commons/mail/Email;->buildMimeMessage()V

    .line 258
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    nop

    .line 259
    return-void

    .line 255
    :catch_1
    move-exception v0

    .line 257
    .local v0, "me":Ljavax/mail/MessagingException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createBodyPart()Ljavax/mail/BodyPart;
    .locals 1

    .line 534
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    return-object v0
.end method

.method protected createMimeMultipart()Ljavax/mail/internet/MimeMultipart;
    .locals 1

    .line 544
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    return-object v0
.end method

.method protected getContainer()Ljavax/mail/internet/MimeMultipart;
    .locals 1

    .line 519
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    if-nez v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->init()V

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->container:Ljavax/mail/internet/MimeMultipart;

    return-object v0
.end method

.method protected getPrimaryBodyPart()Ljavax/mail/BodyPart;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 496
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->init()V

    .line 502
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    if-nez v0, :cond_1

    .line 504
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    .line 505
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 508
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 166
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createMimeMultipart()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->container:Ljavax/mail/internet/MimeMultipart;

    .line 172
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->container:Ljavax/mail/internet/MimeMultipart;

    invoke-super {p0, v0}, Lorg/apache/commons/mail/Email;->setContent(Ljavax/mail/internet/MimeMultipart;)V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    .line 175
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isBoolHasAttachments()Z
    .locals 1

    .line 555
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->boolHasAttachments:Z

    return v0
.end method

.method protected isInitialized()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    return v0
.end method

.method public setBoolHasAttachments(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 566
    iput-boolean p1, p0, Lorg/apache/commons/mail/MultiPartEmail;->boolHasAttachments:Z

    .line 567
    return-void
.end method

.method protected setInitialized(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 586
    iput-boolean p1, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    .line 587
    return-void
.end method

.method public setMsg(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 190
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getPrimaryBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 198
    .local v0, "primary":Ljavax/mail/BodyPart;
    instance-of v1, v0, Ljavax/mail/internet/MimePart;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/mail/MultiPartEmail;->charset:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/MimePart;

    iget-object v2, p0, Lorg/apache/commons/mail/MultiPartEmail;->charset:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Ljavax/mail/internet/MimePart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0, p1}, Ljavax/mail/BodyPart;->setText(Ljava/lang/String;)V

    .line 210
    .end local v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    .line 211
    return-object p0

    .line 207
    :catch_0
    move-exception v0

    .line 209
    .local v0, "me":Ljavax/mail/MessagingException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 192
    .end local v0
    :cond_1
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Invalid message supplied"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "aSubType"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    .line 74
    return-void
.end method
