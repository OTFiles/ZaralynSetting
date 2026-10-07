.class public Lcom/sun/mail/handlers/multipart_mixed;
.super Ljava/lang/Object;
.source "multipart_mixed.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private myDF:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    .line 51
    const-class v1, Ljavax/mail/internet/MimeMultipart;

    .line 52
    const-string v2, "multipart/mixed"

    .line 53
    const-string v3, "Multipart"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/mail/handlers/multipart_mixed;->myDF:Ljavax/activation/ActivationDataFlavor;

    .line 49
    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 3
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    :try_start_0
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V

    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljavax/mail/MessagingException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception while constructing MimeMultipart"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    nop

    .line 90
    .local v1, "ioex":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 91
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

    .line 75
    iget-object v0, p0, Lcom/sun/mail/handlers/multipart_mixed;->myDF:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, p2}, Lcom/sun/mail/handlers/multipart_mixed;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .locals 3

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    iget-object v1, p0, Lcom/sun/mail/handlers/multipart_mixed;->myDF:Ljavax/activation/ActivationDataFlavor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    instance-of v0, p1, Ljavax/mail/internet/MimeMultipart;

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v0, p3}, Ljavax/mail/internet/MimeMultipart;->writeTo(Ljava/io/OutputStream;)V

    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljavax/mail/MessagingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    .end local v0
    :cond_0
    :goto_0
    return-void
.end method
