.class public abstract Lorg/apache/commons/mail/Email;
.super Ljava/lang/Object;
.source "Email.java"


# static fields
.field public static final ATTACHMENTS:Ljava/lang/String; = "attachments"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content.type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMAIL_BODY:Ljava/lang/String; = "email.body"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMAIL_SUBJECT:Ljava/lang/String; = "email.subject"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FILE_SERVER:Ljava/lang/String; = "file.server"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_8859_1:Ljava/lang/String; = "iso-8859-1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KOI8_R:Ljava/lang/String; = "koi8-r"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_DEBUG:Ljava/lang/String; = "mail.debug"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_HOST:Ljava/lang/String; = "mail.smtp.host"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_PORT:Ljava/lang/String; = "mail.smtp.port"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_SMTP_AUTH:Ljava/lang/String; = "mail.smtp.auth"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_SMTP_CONNECTIONTIMEOUT:Ljava/lang/String; = "mail.smtp.connectiontimeout"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_SMTP_FROM:Ljava/lang/String; = "mail.smtp.from"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_SMTP_PASSWORD:Ljava/lang/String; = "mail.smtp.password"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_SMTP_SOCKET_FACTORY_CLASS:Ljava/lang/String; = "mail.smtp.socketFactory.class"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_SMTP_SOCKET_FACTORY_FALLBACK:Ljava/lang/String; = "mail.smtp.socketFactory.fallback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_SMTP_SOCKET_FACTORY_PORT:Ljava/lang/String; = "mail.smtp.socketFactory.port"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_SMTP_TIMEOUT:Ljava/lang/String; = "mail.smtp.timeout"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_SMTP_USER:Ljava/lang/String; = "mail.smtp.user"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_TRANSPORT_PROTOCOL:Ljava/lang/String; = "mail.transport.protocol"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAIL_TRANSPORT_TLS:Ljava/lang/String; = "mail.smtp.starttls.enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RECEIVER_EMAIL:Ljava/lang/String; = "receiver.email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RECEIVER_NAME:Ljava/lang/String; = "receiver.name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENDER_EMAIL:Ljava/lang/String; = "sender.email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENDER_NAME:Ljava/lang/String; = "sender.name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SMTP:Ljava/lang/String; = "smtp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TEXT_HTML:Ljava/lang/String; = "text/html"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final US_ASCII:Ljava/lang/String; = "us-ascii"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected authenticator:Ljavax/mail/Authenticator;

.field protected bccList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;"
        }
    .end annotation
.end field

.field protected bounceAddress:Ljava/lang/String;

.field protected ccList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;"
        }
    .end annotation
.end field

.field protected charset:Ljava/lang/String;

.field protected content:Ljava/lang/Object;

.field protected contentType:Ljava/lang/String;

.field protected debug:Z

.field protected emailBody:Ljavax/mail/internet/MimeMultipart;

.field protected fromAddress:Ljavax/mail/internet/InternetAddress;

.field protected headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected hostName:Ljava/lang/String;

.field protected message:Ljavax/mail/internet/MimeMessage;

.field protected popBeforeSmtp:Z

.field protected popHost:Ljava/lang/String;

.field protected popPassword:Ljava/lang/String;

.field protected popUsername:Ljava/lang/String;

.field protected replyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private sendPartial:Z

.field protected sentDate:Ljava/util/Date;

.field private session:Ljavax/mail/Session;

.field protected smtpPort:Ljava/lang/String;

.field protected socketConnectionTimeout:I

.field protected socketTimeout:I

.field protected ssl:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sslCheckServerIdentity:Z

.field private sslOnConnect:Z

.field protected sslSmtpPort:Ljava/lang/String;

.field private startTlsEnabled:Z

.field private startTlsRequired:Z

.field protected subject:Ljava/lang/String;

.field protected tls:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected toList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const-string v0, "25"

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->smtpPort:Ljava/lang/String;

    .line 222
    const-string v0, "465"

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->sslSmtpPort:Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->toList:Ljava/util/List;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->ccList:Ljava/util/List;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->bccList:Ljava/util/List;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->replyList:Ljava/util/List;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->headers:Ljava/util/Map;

    .line 282
    const v0, 0xea60

    iput v0, p0, Lorg/apache/commons/mail/Email;->socketTimeout:I

    .line 285
    iput v0, p0, Lorg/apache/commons/mail/Email;->socketConnectionTimeout:I

    return-void
.end method

.method private checkSessionAlreadyInitialized()V
    .locals 2

    .line 1992
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    if-nez v0, :cond_0

    .line 1996
    return-void

    .line 1994
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The mail session is already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createFoldedHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1914
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1918
    if-eqz p2, :cond_0

    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1925
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1927
    :catch_0
    move-exception v0

    .line 1929
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    return-object p2

    .line 1920
    .end local v0
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value can not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1916
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name can not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createInternetAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 1949
    :try_start_0
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    new-instance v1, Lorg/apache/commons/mail/util/IDNEmailAddressConverter;

    invoke-direct {v1}, Lorg/apache/commons/mail/util/IDNEmailAddressConverter;-><init>()V

    invoke-virtual {v1, p1}, Lorg/apache/commons/mail/util/IDNEmailAddressConverter;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 1952
    .local v0, "address":Ljavax/mail/internet/InternetAddress;
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1955
    invoke-static {p3}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1957
    invoke-virtual {v0, p2}, Ljavax/mail/internet/InternetAddress;->setPersonal(Ljava/lang/String;)V

    goto :goto_0

    .line 1963
    :cond_0
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 1964
    .local v1, "set":Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljavax/mail/internet/InternetAddress;->setPersonal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    .end local v1
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->validate()V

    .line 1979
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 1978
    nop

    .line 1980
    return-object v0

    .line 1976
    .end local v0
    :catch_0
    move-exception v0

    .line 1978
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1972
    .end local v0
    :catch_1
    move-exception v0

    .line 1974
    .local v0, "e":Ljavax/mail/internet/AddressException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addBcc(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 997
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/Email;->addBcc(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    move-result-object v0

    return-object v0
.end method

.method public addBcc(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/mail/Email;->addBcc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    move-result-object v0

    return-object v0
.end method

.method public addBcc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->bccList:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/mail/Email;->createInternetAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    return-object p0
.end method

.method public varargs addBcc([Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 4
    .param p1, "emails"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 1017
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 1022
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1024
    .local v2, "email":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/mail/Email;->addBcc(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    .line 1022
    .end local v2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1027
    :cond_0
    return-object p0

    .line 1019
    :cond_1
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Address List provided was invalid"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addCc(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 888
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/Email;->addCc(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    move-result-object v0

    return-object v0
.end method

.method public addCc(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 938
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/mail/Email;->addCc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    move-result-object v0

    return-object v0
.end method

.method public addCc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->ccList:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/mail/Email;->createInternetAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    return-object p0
.end method

.method public varargs addCc([Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 4
    .param p1, "emails"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 908
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 913
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 915
    .local v2, "email":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/mail/Email;->addCc(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    .line 913
    .end local v2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 918
    :cond_0
    return-object p0

    .line 910
    :cond_1
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Address List provided was invalid"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1200
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1204
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    return-void

    .line 1206
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value can not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1202
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name can not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addReplyTo(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 1106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/Email;->addReplyTo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    move-result-object v0

    return-object v0
.end method

.method public addReplyTo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 1126
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/mail/Email;->addReplyTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    move-result-object v0

    return-object v0
.end method

.method public addReplyTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->replyList:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/mail/Email;->createInternetAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1144
    return-object p0
.end method

.method public addTo(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/Email;->addTo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    move-result-object v0

    return-object v0
.end method

.method public addTo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/mail/Email;->addTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    move-result-object v0

    return-object v0
.end method

.method public addTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->toList:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/mail/Email;->createInternetAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    return-object p0
.end method

.method public varargs addTo([Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 4
    .param p1, "emails"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 798
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 803
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 805
    .local v2, "email":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/mail/Email;->addTo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    .line 803
    .end local v2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 808
    :cond_0
    return-object p0

    .line 800
    :cond_1
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Address List provided was invalid"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buildMimeMessage()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 1317
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    if-nez v0, :cond_11

    .line 1326
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->getMailSession()Ljavax/mail/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/mail/Email;->createMimeMessage(Ljavax/mail/Session;)Ljavax/mail/internet/MimeMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    .line 1328
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->subject:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1330
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    iget-object v1, p0, Lorg/apache/commons/mail/Email;->subject:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1336
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    iget-object v1, p0, Lorg/apache/commons/mail/Email;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 1341
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->contentType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/mail/Email;->updateContentType(Ljava/lang/String;)V

    .line 1343
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->content:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 1345
    const-string v0, "text/plain"

    iget-object v1, p0, Lorg/apache/commons/mail/Email;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/mail/Email;->content:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1350
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    iget-object v1, p0, Lorg/apache/commons/mail/Email;->content:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1354
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    iget-object v1, p0, Lorg/apache/commons/mail/Email;->content:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1357
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->emailBody:Ljavax/mail/internet/MimeMultipart;

    if-eqz v0, :cond_5

    .line 1359
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->contentType:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1361
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    iget-object v1, p0, Lorg/apache/commons/mail/Email;->emailBody:Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    goto :goto_1

    .line 1365
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    iget-object v1, p0, Lorg/apache/commons/mail/Email;->emailBody:Ljavax/mail/internet/MimeMultipart;

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1370
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->setText(Ljava/lang/String;)V

    .line 1373
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->fromAddress:Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_6

    .line 1375
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    iget-object v1, p0, Lorg/apache/commons/mail/Email;->fromAddress:Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    goto :goto_2

    .line 1379
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    const-string v1, "mail.smtp.from"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    const-string v1, "mail.from"

    .line 1380
    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 1382
    :cond_7
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "From address required"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1386
    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->toList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/mail/Email;->ccList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/mail/Email;->bccList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 1391
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->toList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1393
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->toList:Ljava/util/List;

    .line 1395
    invoke-virtual {p0, v2}, Lorg/apache/commons/mail/Email;->toInternetAddressArray(Ljava/util/List;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v2

    .line 1393
    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1398
    :cond_9
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->ccList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 1400
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->ccList:Ljava/util/List;

    .line 1402
    invoke-virtual {p0, v2}, Lorg/apache/commons/mail/Email;->toInternetAddressArray(Ljava/util/List;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v2

    .line 1400
    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1405
    :cond_a
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->bccList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1407
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->bccList:Ljava/util/List;

    .line 1409
    invoke-virtual {p0, v2}, Lorg/apache/commons/mail/Email;->toInternetAddressArray(Ljava/util/List;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v2

    .line 1407
    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1412
    :cond_b
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->replyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 1414
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    iget-object v1, p0, Lorg/apache/commons/mail/Email;->replyList:Ljava/util/List;

    .line 1415
    invoke-virtual {p0, v1}, Lorg/apache/commons/mail/Email;->toInternetAddressArray(Ljava/util/List;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 1414
    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->setReplyTo([Ljavax/mail/Address;)V

    .line 1419
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 1421
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1423
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/mail/Email;->createFoldedHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1424
    .local v2, "foldedValue":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    .end local v1
    .end local v2
    goto :goto_3

    .line 1428
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1430
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->getSentDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 1433
    :cond_e
    iget-boolean v0, p0, Lorg/apache/commons/mail/Email;->popBeforeSmtp:Z

    if-eqz v0, :cond_f

    .line 1435
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    const-string v1, "pop3"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getStore(Ljava/lang/String;)Ljavax/mail/Store;

    move-result-object v0

    .line 1436
    .local v0, "store":Ljavax/mail/Store;
    iget-object v1, p0, Lorg/apache/commons/mail/Email;->popHost:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->popUsername:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/mail/Email;->popPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/mail/Store;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    .end local v0
    :cond_f
    nop

    .line 1443
    return-void

    .line 1388
    :cond_10
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "At least one receiver address required"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1439
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 1441
    .local v0, "me":Ljavax/mail/MessagingException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1321
    .end local v0
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The MimeMessage is already built."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createMimeMessage(Ljavax/mail/Session;)Ljavax/mail/internet/MimeMessage;
    .locals 1
    .param p1, "aSession"    # Ljavax/mail/Session;

    .line 1901
    new-instance v0, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    return-object v0
.end method

.method public getBccAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;"
        }
    .end annotation

    .line 1829
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->bccList:Ljava/util/List;

    return-object v0
.end method

.method public getBounceAddress()Ljava/lang/String;
    .locals 1

    .line 1256
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->bounceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCcAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;"
        }
    .end annotation

    .line 1819
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->ccList:Ljava/util/List;

    return-object v0
.end method

.method public getFromAddress()Ljavax/mail/internet/InternetAddress;
    .locals 1

    .line 1547
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->fromAddress:Ljavax/mail/internet/InternetAddress;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .line 1221
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1232
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    .line 1557
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_0

    .line 1559
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    const-string v1, "mail.smtp.host"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1561
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->hostName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1563
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->hostName:Ljava/lang/String;

    return-object v0

    .line 1565
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMailSession()Ljavax/mail/Session;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    if-nez v0, :cond_d

    .line 637
    new-instance v0, Ljava/util/Properties;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 638
    .local v0, "properties":Ljava/util/Properties;
    const-string v1, "mail.transport.protocol"

    const-string v2, "smtp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 640
    iget-object v1, p0, Lorg/apache/commons/mail/Email;->hostName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    const-string v1, "mail.smtp.host"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/mail/Email;->hostName:Ljava/lang/String;

    .line 645
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/mail/Email;->hostName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 650
    const-string v1, "mail.smtp.port"

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->smtpPort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 651
    const-string v1, "mail.smtp.host"

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 652
    const-string v1, "mail.debug"

    iget-boolean v2, p0, Lorg/apache/commons/mail/Email;->debug:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 654
    const-string v1, "mail.smtp.starttls.enable"

    .line 655
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->isStartTLSEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "true"

    goto :goto_0

    :cond_1
    const-string v2, "false"

    .line 654
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 656
    const-string v1, "mail.smtp.starttls.required"

    .line 657
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->isStartTLSRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "true"

    goto :goto_1

    :cond_2
    const-string v2, "false"

    .line 656
    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 659
    const-string v1, "mail.smtp.sendpartial"

    .line 660
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->isSendPartial()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "true"

    goto :goto_2

    :cond_3
    const-string v2, "false"

    .line 659
    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 661
    const-string v1, "mail.smtps.sendpartial"

    .line 662
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->isSendPartial()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "true"

    goto :goto_3

    :cond_4
    const-string v2, "false"

    .line 661
    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 664
    iget-object v1, p0, Lorg/apache/commons/mail/Email;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v1, :cond_5

    .line 666
    const-string v1, "mail.smtp.auth"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 669
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->isSSLOnConnect()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 671
    const-string v1, "mail.smtp.port"

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->sslSmtpPort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 672
    const-string v1, "mail.smtp.socketFactory.port"

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->sslSmtpPort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 673
    const-string v1, "mail.smtp.socketFactory.class"

    const-string v2, "javax.net.ssl.SSLSocketFactory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 674
    const-string v1, "mail.smtp.socketFactory.fallback"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 677
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->isSSLOnConnect()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->isStartTLSEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->isSSLCheckServerIdentity()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 679
    const-string v1, "mail.smtp.ssl.checkserveridentity"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 682
    :cond_8
    iget-object v1, p0, Lorg/apache/commons/mail/Email;->bounceAddress:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 684
    const-string v1, "mail.smtp.from"

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->bounceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 687
    :cond_9
    iget v1, p0, Lorg/apache/commons/mail/Email;->socketTimeout:I

    if-lez v1, :cond_a

    .line 689
    const-string v1, "mail.smtp.timeout"

    iget v2, p0, Lorg/apache/commons/mail/Email;->socketTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 692
    :cond_a
    iget v1, p0, Lorg/apache/commons/mail/Email;->socketConnectionTimeout:I

    if-lez v1, :cond_b

    .line 694
    const-string v1, "mail.smtp.connectiontimeout"

    iget v2, p0, Lorg/apache/commons/mail/Email;->socketConnectionTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 699
    :cond_b
    iget-object v1, p0, Lorg/apache/commons/mail/Email;->authenticator:Ljavax/mail/Authenticator;

    invoke-static {v0, v1}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    .end local v0
    goto :goto_4

    .line 647
    .restart local v0
    :cond_c
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    const-string v2, "Cannot find valid hostname for mail session"

    invoke-direct {v1, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 701
    .end local v0
    :cond_d
    :goto_4
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method public getMimeMessage()Ljavax/mail/internet/MimeMessage;
    .locals 1

    .line 1481
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    return-object v0
.end method

.method public getReplyToAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;"
        }
    .end annotation

    .line 1839
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->replyList:Ljava/util/List;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 3

    .line 1523
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->sentDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1525
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0

    .line 1527
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/apache/commons/mail/Email;->sentDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getSmtpPort()Ljava/lang/String;
    .locals 2

    .line 1575
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    const-string v1, "mail.smtp.port"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1579
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->smtpPort:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1581
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->smtpPort:Ljava/lang/String;

    return-object v0

    .line 1583
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSocketConnectionTimeout()I
    .locals 1

    .line 1850
    iget v0, p0, Lorg/apache/commons/mail/Email;->socketConnectionTimeout:I

    return v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 1875
    iget v0, p0, Lorg/apache/commons/mail/Email;->socketTimeout:I

    return v0
.end method

.method public getSslSmtpPort()Ljava/lang/String;
    .locals 2

    .line 1745
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    const-string v1, "mail.smtp.socketFactory.port"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1749
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->sslSmtpPort:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1751
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->sslSmtpPort:Ljava/lang/String;

    return-object v0

    .line 1753
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1537
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;"
        }
    .end annotation

    .line 1809
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->toList:Ljava/util/List;

    return-object v0
.end method

.method public isSSL()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1666
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->isSSLOnConnect()Z

    move-result v0

    return v0
.end method

.method public isSSLCheckServerIdentity()Z
    .locals 1

    .line 1720
    iget-boolean v0, p0, Lorg/apache/commons/mail/Email;->sslCheckServerIdentity:Z

    return v0
.end method

.method public isSSLOnConnect()Z
    .locals 1

    .line 1677
    iget-boolean v0, p0, Lorg/apache/commons/mail/Email;->sslOnConnect:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/mail/Email;->ssl:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSendPartial()Z
    .locals 1

    .line 1778
    iget-boolean v0, p0, Lorg/apache/commons/mail/Email;->sendPartial:Z

    return v0
.end method

.method public isStartTLSEnabled()Z
    .locals 1

    .line 1605
    iget-boolean v0, p0, Lorg/apache/commons/mail/Email;->startTlsEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/mail/Email;->tls:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStartTLSRequired()Z
    .locals 1

    .line 1594
    iget-boolean v0, p0, Lorg/apache/commons/mail/Email;->startTlsRequired:Z

    return v0
.end method

.method public isTLS()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1619
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->isStartTLSEnabled()Z

    move-result v0

    return v0
.end method

.method public send()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 1495
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->buildMimeMessage()V

    .line 1496
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->sendMimeMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendMimeMessage()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 1455
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    const-string v1, "MimeMessage has not been created yet"

    invoke-static {v0, v1}, Lorg/apache/commons/mail/EmailUtils;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1459
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    invoke-static {v0}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    .line 1460
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getMessageID()Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1462
    :catch_0
    move-exception v0

    .line 1464
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending the email to the following server failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    invoke-virtual {p0}, Lorg/apache/commons/mail/Email;->getSmtpPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1469
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 354
    new-instance v0, Lorg/apache/commons/mail/DefaultAuthenticator;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/mail/DefaultAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/mail/Email;->setAuthenticator(Ljavax/mail/Authenticator;)V

    .line 355
    return-void
.end method

.method public setAuthenticator(Ljavax/mail/Authenticator;)V
    .locals 0
    .param p1, "newAuthenticator"    # Ljavax/mail/Authenticator;

    .line 370
    iput-object p1, p0, Lorg/apache/commons/mail/Email;->authenticator:Ljavax/mail/Authenticator;

    .line 371
    return-void
.end method

.method public setBcc(Ljava/util/Collection;)Lorg/apache/commons/mail/Email;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;)",
            "Lorg/apache/commons/mail/Email;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 1081
    .local p1, "aCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/mail/internet/InternetAddress;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->bccList:Ljava/util/List;

    .line 1087
    return-object p0

    .line 1083
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Address List provided was invalid"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBounceAddress(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 4
    .param p1, "email"    # Ljava/lang/String;

    .line 1272
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;->checkSessionAlreadyInitialized()V

    .line 1274
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/mail/Email;->createInternetAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->bounceAddress:Ljava/lang/String;

    .line 1284
    :try_end_0
    .catch Lorg/apache/commons/mail/EmailException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1280
    :catch_0
    move-exception v0

    .line 1283
    .local v0, "e":Lorg/apache/commons/mail/EmailException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set the bounce address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1288
    .end local v0
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/mail/Email;->bounceAddress:Ljava/lang/String;

    .line 1291
    :goto_0
    return-object p0
.end method

.method public setCc(Ljava/util/Collection;)Lorg/apache/commons/mail/Email;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;)",
            "Lorg/apache/commons/mail/Email;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 972
    .local p1, "aCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/mail/internet/InternetAddress;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 977
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->ccList:Ljava/util/List;

    .line 978
    return-object p0

    .line 974
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Address List provided was invalid"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 2
    .param p1, "newCharset"    # Ljava/lang/String;

    .line 385
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 386
    .local v0, "set":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "aObject"    # Ljava/lang/Object;
    .param p2, "aContentType"    # Ljava/lang/String;

    .line 409
    iput-object p1, p0, Lorg/apache/commons/mail/Email;->content:Ljava/lang/Object;

    .line 410
    invoke-virtual {p0, p2}, Lorg/apache/commons/mail/Email;->updateContentType(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public setContent(Ljavax/mail/internet/MimeMultipart;)V
    .locals 0
    .param p1, "aMimeMultipart"    # Ljavax/mail/internet/MimeMultipart;

    .line 397
    iput-object p1, p0, Lorg/apache/commons/mail/Email;->emailBody:Ljavax/mail/internet/MimeMultipart;

    .line 398
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "d"    # Z

    .line 336
    iput-boolean p1, p0, Lorg/apache/commons/mail/Email;->debug:Z

    .line 337
    return-void
.end method

.method public setFrom(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 720
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/Email;->setFrom(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/mail/Email;->setFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 757
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/mail/Email;->createInternetAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->fromAddress:Ljavax/mail/internet/InternetAddress;

    .line 758
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1182
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/commons/mail/Email;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1184
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1186
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/mail/Email;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    .end local v1
    goto :goto_0

    .line 1188
    :cond_0
    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0
    .param p1, "aHostName"    # Ljava/lang/String;

    .line 475
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;->checkSessionAlreadyInitialized()V

    .line 476
    iput-object p1, p0, Lorg/apache/commons/mail/Email;->hostName:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public setMailSession(Ljavax/mail/Session;)V
    .locals 5
    .param p1, "aSession"    # Ljavax/mail/Session;

    .line 566
    const-string v0, "no mail session supplied"

    invoke-static {p1, v0}, Lorg/apache/commons/mail/EmailUtils;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 569
    .local v0, "sessionProperties":Ljava/util/Properties;
    const-string v1, "mail.smtp.auth"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "auth":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    const-string v2, "mail.smtp.user"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "userName":Ljava/lang/String;
    const-string v3, "mail.smtp.password"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, "password":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 580
    new-instance v4, Lorg/apache/commons/mail/DefaultAuthenticator;

    invoke-direct {v4, v2, v3}, Lorg/apache/commons/mail/DefaultAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/apache/commons/mail/Email;->authenticator:Ljavax/mail/Authenticator;

    .line 581
    iget-object v4, p0, Lorg/apache/commons/mail/Email;->authenticator:Ljavax/mail/Authenticator;

    invoke-static {v0, v4}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    goto :goto_0

    .line 586
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    .line 588
    .end local v2
    .end local v3
    :goto_0
    goto :goto_1

    .line 591
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/mail/Email;->session:Ljavax/mail/Session;

    .line 593
    :goto_1
    return-void
.end method

.method public setMailSessionFromJNDI(Ljava/lang/String;)V
    .locals 3
    .param p1, "jndiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 606
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 610
    const/4 v0, 0x0

    .line 611
    .local v0, "ctx":Ljavax/naming/Context;
    const-string v1, "java:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    new-instance v1, Ljavax/naming/InitialContext;

    invoke-direct {v1}, Ljavax/naming/InitialContext;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 617
    :cond_0
    new-instance v1, Ljavax/naming/InitialContext;

    invoke-direct {v1}, Ljavax/naming/InitialContext;-><init>()V

    const-string v2, "java:comp/env"

    invoke-virtual {v1, v2}, Ljavax/naming/InitialContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/naming/Context;

    .line 620
    :goto_0
    invoke-interface {v0, p1}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Session;

    invoke-virtual {p0, v1}, Lorg/apache/commons/mail/Email;->setMailSession(Ljavax/mail/Session;)V

    .line 621
    return-void

    .line 608
    .end local v0
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JNDI name missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setMsg(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation
.end method

.method public setPopBeforeSmtp(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "newPopBeforeSmtp"    # Z
    .param p2, "newPopHost"    # Ljava/lang/String;
    .param p3, "newPopUsername"    # Ljava/lang/String;
    .param p4, "newPopPassword"    # Ljava/lang/String;

    .line 1650
    iput-boolean p1, p0, Lorg/apache/commons/mail/Email;->popBeforeSmtp:Z

    .line 1651
    iput-object p2, p0, Lorg/apache/commons/mail/Email;->popHost:Ljava/lang/String;

    .line 1652
    iput-object p3, p0, Lorg/apache/commons/mail/Email;->popUsername:Ljava/lang/String;

    .line 1653
    iput-object p4, p0, Lorg/apache/commons/mail/Email;->popPassword:Ljava/lang/String;

    .line 1654
    return-void
.end method

.method public setReplyTo(Ljava/util/Collection;)Lorg/apache/commons/mail/Email;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;)",
            "Lorg/apache/commons/mail/Email;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 1160
    .local p1, "aCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/mail/internet/InternetAddress;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->replyList:Ljava/util/List;

    .line 1166
    return-object p0

    .line 1162
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Address List provided was invalid"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSSL(Z)V
    .locals 0
    .param p1, "ssl"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1690
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/Email;->setSSLOnConnect(Z)Lorg/apache/commons/mail/Email;

    .line 1691
    return-void
.end method

.method public setSSLCheckServerIdentity(Z)Lorg/apache/commons/mail/Email;
    .locals 0
    .param p1, "sslCheckServerIdentity"    # Z

    .line 1733
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;->checkSessionAlreadyInitialized()V

    .line 1734
    iput-boolean p1, p0, Lorg/apache/commons/mail/Email;->sslCheckServerIdentity:Z

    .line 1735
    return-object p0
.end method

.method public setSSLOnConnect(Z)Lorg/apache/commons/mail/Email;
    .locals 0
    .param p1, "ssl"    # Z

    .line 1706
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;->checkSessionAlreadyInitialized()V

    .line 1707
    iput-boolean p1, p0, Lorg/apache/commons/mail/Email;->sslOnConnect:Z

    .line 1708
    iput-boolean p1, p0, Lorg/apache/commons/mail/Email;->ssl:Z

    .line 1709
    return-object p0
.end method

.method public setSendPartial(Z)Lorg/apache/commons/mail/Email;
    .locals 0
    .param p1, "sendPartial"    # Z

    .line 1797
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;->checkSessionAlreadyInitialized()V

    .line 1798
    iput-boolean p1, p0, Lorg/apache/commons/mail/Email;->sendPartial:Z

    .line 1799
    return-object p0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .line 1508
    if-eqz p1, :cond_0

    .line 1511
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->sentDate:Ljava/util/Date;

    .line 1513
    :cond_0
    return-void
.end method

.method public setSmtpPort(I)V
    .locals 3
    .param p1, "aPortNumber"    # I

    .line 537
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;->checkSessionAlreadyInitialized()V

    .line 539
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 547
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->smtpPort:Ljava/lang/String;

    .line 548
    return-void

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot connect to a port number that is less than 1 ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSocketConnectionTimeout(I)V
    .locals 0
    .param p1, "socketConnectionTimeout"    # I

    .line 1863
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;->checkSessionAlreadyInitialized()V

    .line 1864
    iput p1, p0, Lorg/apache/commons/mail/Email;->socketConnectionTimeout:I

    .line 1865
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0
    .param p1, "socketTimeout"    # I

    .line 1888
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;->checkSessionAlreadyInitialized()V

    .line 1889
    iput p1, p0, Lorg/apache/commons/mail/Email;->socketTimeout:I

    .line 1890
    return-void
.end method

.method public setSslSmtpPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "sslSmtpPort"    # Ljava/lang/String;

    .line 1766
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;->checkSessionAlreadyInitialized()V

    .line 1767
    iput-object p1, p0, Lorg/apache/commons/mail/Email;->sslSmtpPort:Ljava/lang/String;

    .line 1768
    return-void
.end method

.method public setStartTLSEnabled(Z)Lorg/apache/commons/mail/Email;
    .locals 0
    .param p1, "startTlsEnabled"    # Z

    .line 503
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;->checkSessionAlreadyInitialized()V

    .line 504
    iput-boolean p1, p0, Lorg/apache/commons/mail/Email;->startTlsEnabled:Z

    .line 505
    iput-boolean p1, p0, Lorg/apache/commons/mail/Email;->tls:Z

    .line 506
    return-object p0
.end method

.method public setStartTLSRequired(Z)Lorg/apache/commons/mail/Email;
    .locals 0
    .param p1, "startTlsRequired"    # Z

    .line 521
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;->checkSessionAlreadyInitialized()V

    .line 522
    iput-boolean p1, p0, Lorg/apache/commons/mail/Email;->startTlsRequired:Z

    .line 523
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 1
    .param p1, "aSubject"    # Ljava/lang/String;

    .line 1244
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->replaceEndOfLineCharactersWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->subject:Ljava/lang/String;

    .line 1245
    return-object p0
.end method

.method public setTLS(Z)V
    .locals 0
    .param p1, "withTLS"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 490
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/Email;->setStartTLSEnabled(Z)Lorg/apache/commons/mail/Email;

    .line 491
    return-void
.end method

.method public setTo(Ljava/util/Collection;)Lorg/apache/commons/mail/Email;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;)",
            "Lorg/apache/commons/mail/Email;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 863
    .local p1, "aCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/mail/internet/InternetAddress;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->toList:Ljava/util/List;

    .line 869
    return-object p0

    .line 865
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Address List provided was invalid"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected toInternetAddressArray(Ljava/util/List;)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;)[",
            "Ljavax/mail/internet/InternetAddress;"
        }
    .end annotation

    .line 1632
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/internet/InternetAddress;

    return-object v0
.end method

.method public updateContentType(Ljava/lang/String;)V
    .locals 5
    .param p1, "aContentType"    # Ljava/lang/String;

    .line 421
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/mail/Email;->contentType:Ljava/lang/String;

    goto :goto_1

    .line 428
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/mail/Email;->contentType:Ljava/lang/String;

    .line 431
    const-string v0, "; charset="

    .line 432
    .local v0, "strMarker":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 434
    .local v1, "charsetPos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 437
    const-string v3, "; charset="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 438
    nop

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 441
    .local v3, "intCharsetEnd":I
    if-eq v3, v2, :cond_1

    .line 443
    nop

    .line 444
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    .line 450
    .end local v3
    :goto_0
    goto :goto_1

    .line 455
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/mail/Email;->contentType:Ljava/lang/String;

    const-string v3, "text/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 457
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/commons/mail/Email;->contentType:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 458
    .local v2, "contentTypeBuf":Ljava/lang/StringBuffer;
    const-string v3, "; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    iget-object v3, p0, Lorg/apache/commons/mail/Email;->charset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/mail/Email;->contentType:Ljava/lang/String;

    .line 464
    .end local v0
    .end local v1
    .end local v2
    :cond_3
    :goto_1
    return-void
.end method
