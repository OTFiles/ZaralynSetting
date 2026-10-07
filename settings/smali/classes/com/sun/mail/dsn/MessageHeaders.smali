.class public Lcom/sun/mail/dsn/MessageHeaders;
.super Ljavax/mail/internet/MimeMessage;
.source "MessageHeaders.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B

    .line 71
    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/InternetHeaders;)V
    .locals 1
    .param p1, "headers"    # Ljavax/mail/internet/InternetHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 80
    iput-object p1, p0, Lcom/sun/mail/dsn/MessageHeaders;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B

    .line 82
    return-void
.end method


# virtual methods
.method protected getContentStream()Ljava/io/InputStream;
    .locals 2

    .line 97
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 93
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 2
    .param p1, "dh"    # Ljavax/activation/DataHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t set content for MessageHeaders"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
