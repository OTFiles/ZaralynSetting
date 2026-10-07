.class public Lcom/sun/mail/util/LineOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LineOutputStream.java"


# static fields
.field private static newline:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/mail/util/LineOutputStream;->newline:[B

    .line 62
    sget-object v0, Lcom/sun/mail/util/LineOutputStream;->newline:[B

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 63
    sget-object v0, Lcom/sun/mail/util/LineOutputStream;->newline:[B

    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 67
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 68
    return-void
.end method


# virtual methods
.method public writeln()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/LineOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/LineOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 86
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public writeln(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 72
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 73
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/sun/mail/util/LineOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 74
    iget-object v1, p0, Lcom/sun/mail/util/LineOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/sun/mail/util/LineOutputStream;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 78
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
