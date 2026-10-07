.class public Lorg/apache/commons/mail/HtmlEmail;
.super Lorg/apache/commons/mail/MultiPartEmail;
.source "HtmlEmail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    }
.end annotation


# static fields
.field public static final CID_LENGTH:I = 0xa

.field private static final HTML_MESSAGE_END:Ljava/lang/String; = "</pre></body></html>"

.field private static final HTML_MESSAGE_START:Ljava/lang/String; = "<html><body><pre>"


# instance fields
.field protected html:Ljava/lang/String;

.field protected inlineEmbeds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/mail/HtmlEmail$InlineImage;",
            ">;"
        }
    .end annotation
.end field

.field protected inlineImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/mail/HtmlEmail$InlineImage;",
            ">;"
        }
    .end annotation
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/mail/MultiPartEmail;-><init>()V

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    return-void
.end method

.method private build()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Lorg/apache/commons/mail/HtmlEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    .line 525
    .local v0, "rootContainer":Ljavax/mail/internet/MimeMultipart;
    move-object v1, v0

    .line 526
    .local v1, "bodyEmbedsContainer":Ljavax/mail/internet/MimeMultipart;
    move-object v2, v0

    .line 527
    .local v2, "bodyContainer":Ljavax/mail/internet/MimeMultipart;
    const/4 v3, 0x0

    .line 528
    .local v3, "msgHtml":Ljavax/mail/internet/MimeBodyPart;
    const/4 v4, 0x0

    .line 530
    .local v4, "msgText":Ljavax/mail/internet/MimeBodyPart;
    const-string v5, "mixed"

    invoke-virtual {v0, v5}, Ljavax/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 534
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 537
    new-instance v5, Ljavax/mail/internet/MimeMultipart;

    const-string v7, "related"

    invoke-direct {v5, v7}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 538
    move-object v2, v1

    .line 539
    invoke-virtual {p0, v1, v6}, Lorg/apache/commons/mail/HtmlEmail;->addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;

    .line 542
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 544
    new-instance v5, Ljavax/mail/internet/MimeMultipart;

    const-string v7, "alternative"

    invoke-direct {v5, v7}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 545
    invoke-virtual {p0}, Lorg/apache/commons/mail/HtmlEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v5

    .line 548
    .local v5, "bodyPart":Ljavax/mail/BodyPart;
    :try_start_0
    invoke-virtual {v5, v2}, Ljavax/mail/BodyPart;->setContent(Ljavax/mail/Multipart;)V

    .line 549
    invoke-virtual {v1, v5, v6}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 554
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 555
    .end local v5
    goto :goto_1

    .line 551
    .restart local v5
    :catch_0
    move-exception v6

    .line 553
    .local v6, "me":Ljavax/mail/MessagingException;
    new-instance v7, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v7, v6}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 557
    .end local v5
    .end local v6
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 563
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-gtz v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/mail/HtmlEmail;->isBoolHasAttachments()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 574
    :cond_1
    const-string v5, "alternative"

    invoke-virtual {v0, v5}, Ljavax/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    goto :goto_1

    .line 567
    :cond_2
    :goto_0
    new-instance v5, Ljavax/mail/internet/MimeMultipart;

    const-string v7, "alternative"

    invoke-direct {v5, v7}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 568
    invoke-virtual {p0, v2, v6}, Lorg/apache/commons/mail/HtmlEmail;->addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;

    .line 578
    :cond_3
    :goto_1
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 580
    new-instance v5, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v5}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    move-object v3, v5

    .line 581
    invoke-virtual {v2, v3, v6}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 585
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    const-string v8, "html"

    invoke-virtual {v3, v5, v7, v8}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v3}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 591
    .local v5, "contentType":Ljava/lang/String;
    if-eqz v5, :cond_4

    const-string v7, "text/html"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 594
    :cond_4
    iget-object v7, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    invoke-static {v7}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 596
    iget-object v7, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "text/html; charset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 603
    :cond_5
    iget-object v7, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    const-string v8, "text/html"

    invoke-virtual {v3, v7, v8}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    :cond_6
    :goto_2
    iget-object v7, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 609
    .local v8, "image":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    invoke-virtual {v8}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getMbp()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 610
    .end local v8
    goto :goto_3

    .line 613
    .end local v5
    :cond_7
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 615
    new-instance v5, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v5}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    move-object v4, v5

    .line 616
    invoke-virtual {v2, v4, v6}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 620
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_8
    return-void
.end method


# virtual methods
.method public buildMimeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 509
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/mail/HtmlEmail;->build()V

    .line 514
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 515
    invoke-super {p0}, Lorg/apache/commons/mail/MultiPartEmail;->buildMimeMessage()V

    .line 516
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 513
    .local v0, "me":Ljavax/mail/MessagingException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public embed(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 321
    const/16 v0, 0xa

    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->randomAlphabetic(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public embed(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 352
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 358
    const/4 v0, 0x0

    move-object v1, v0

    .line 361
    .local v1, "filePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    .line 367
    nop

    .line 371
    iget-object v2, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 374
    .local v2, "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    invoke-virtual {v2}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v3

    check-cast v3, Ljavax/activation/FileDataSource;

    .line 377
    .local v3, "fileDataSource":Ljavax/activation/FileDataSource;
    nop

    .line 380
    .local v0, "existingFilePath":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljavax/activation/FileDataSource;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    .line 387
    nop

    .line 388
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    invoke-virtual {v2}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getCid()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 392
    :cond_0
    new-instance v4, Lorg/apache/commons/mail/EmailException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "embedded name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' is already bound to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; existing names cannot be rebound"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 382
    :catch_0
    move-exception v4

    .line 384
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t get canonical path for file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v3}, Ljavax/activation/FileDataSource;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "which has already been embedded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 398
    .end local v0
    .end local v2
    .end local v3
    .end local v4
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 402
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 406
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    new-instance v0, Ljavax/activation/FileDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p2}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 408
    :cond_2
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isn\'t readable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_3
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isn\'t a normal file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_4
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :catch_1
    move-exception v0

    .line 365
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t get canonical path for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 354
    .end local v0
    .end local v1
    :cond_5
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "file name cannot be null or empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public embed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 214
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    const-string v2, "Invalid URL"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public embed(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 256
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 263
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 266
    .local v0, "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v1

    check-cast v1, Ljavax/activation/URLDataSource;

    .line 272
    .local v1, "urlDataSource":Ljavax/activation/URLDataSource;
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/activation/URLDataSource;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getCid()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 276
    :cond_0
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "embedded name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' is already bound to URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v1}, Ljavax/activation/URLDataSource;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; existing names cannot be rebound"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    .end local v0
    .end local v1
    :cond_1
    const/4 v0, 0x0

    .line 285
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 295
    if-eqz v0, :cond_2

    .line 297
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v1

    .line 302
    goto :goto_1

    .line 301
    :cond_2
    :goto_0
    nop

    .line 304
    :goto_1
    new-instance v1, Ljavax/activation/URLDataSource;

    invoke-direct {v1, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 293
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 287
    :catch_1
    move-exception v1

    .line 289
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    const-string v3, "Invalid URL"

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 293
    .end local v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    nop

    .line 295
    if-eqz v0, :cond_3

    .line 297
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 300
    :catch_2
    move-exception v2

    nop

    .line 301
    :cond_3
    :goto_3
    throw v1

    .line 258
    .end local v0
    :cond_4
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "name cannot be null or empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public embed(Ljavax/activation/DataSource;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "dataSource"    # Ljavax/activation/DataSource;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 435
    .local v0, "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getCid()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 439
    :cond_0
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "embedded DataSource \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is already bound to name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; existing names cannot be rebound"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    .end local v0
    :cond_1
    const/16 v0, 0xa

    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->randomAlphabetic(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public embed(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "dataSource"    # Ljavax/activation/DataSource;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 463
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 473
    .local v0, "mbp":Ljavax/mail/internet/MimeBodyPart;
    :try_start_0
    invoke-static {p3}, Lorg/apache/commons/mail/EmailUtils;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "encodedCid":Ljava/lang/String;
    new-instance v2, Ljavax/activation/DataHandler;

    invoke-direct {v2, p1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 476
    invoke-virtual {v0, p2}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 477
    const-string v2, "inline"

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeBodyPart;->setContentID(Ljava/lang/String;)V

    .line 480
    new-instance v2, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    invoke-direct {v2, v1, p1, v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;-><init>(Ljava/lang/String;Ljavax/activation/DataSource;Ljavax/mail/internet/MimeBodyPart;)V

    .line 481
    .local v2, "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    iget-object v3, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 489
    .end local v1
    .end local v2
    :catch_0
    move-exception v1

    .line 491
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 485
    .end local v1
    :catch_1
    move-exception v1

    .line 487
    .local v1, "me":Ljavax/mail/MessagingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 465
    .end local v0
    .end local v1
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "name cannot be null or empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHtmlMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;
    .locals 2
    .param p1, "aHtml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 148
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iput-object p1, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    .line 154
    return-object p0

    .line 150
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Invalid message supplied"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMsg(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 175
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/HtmlEmail;->setTextMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;

    .line 182
    new-instance v0, Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "<html><body><pre>"

    .line 184
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "</pre></body></html>"

    .line 185
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 188
    .local v0, "htmlMsgBuf":Ljava/lang/StringBuffer;
    const-string v1, "<html><body><pre>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</pre></body></html>"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/mail/HtmlEmail;->setHtmlMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;

    .line 194
    return-object p0

    .line 177
    .end local v0
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Invalid message supplied"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;
    .locals 2
    .param p1, "aText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 128
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iput-object p1, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    .line 134
    return-object p0

    .line 130
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Invalid message supplied"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
