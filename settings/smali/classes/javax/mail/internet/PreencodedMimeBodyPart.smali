.class public Ljavax/mail/internet/PreencodedMimeBodyPart;
.super Ljavax/mail/internet/MimeBodyPart;
.source "PreencodedMimeBodyPart.java"


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 72
    iput-object p1, p0, Ljavax/mail/internet/PreencodedMimeBodyPart;->encoding:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Ljavax/mail/internet/PreencodedMimeBodyPart;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected updateHeaders()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 121
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    .line 122
    iget-object v0, p0, Ljavax/mail/internet/PreencodedMimeBodyPart;->encoding:Ljava/lang/String;

    invoke-static {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "los":Lcom/sun/mail/util/LineOutputStream;
    instance-of v1, p1, Lcom/sun/mail/util/LineOutputStream;

    if-eqz v1, :cond_0

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/util/LineOutputStream;

    goto :goto_0

    .line 100
    :cond_0
    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 104
    :goto_0
    invoke-virtual {p0}, Ljavax/mail/internet/PreencodedMimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v1

    .line 105
    .local v1, "hdrLines":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 112
    invoke-virtual {p0}, Ljavax/mail/internet/PreencodedMimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V

    .line 113
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 114
    return-void

    .line 106
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_1
.end method
