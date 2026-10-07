.class public Lcom/sun/mail/imap/IMAPMultipartDataSource;
.super Ljavax/mail/internet/MimePartDataSource;
.source "IMAPMultipartDataSource.java"

# interfaces
.implements Ljavax/mail/MultipartDataSource;


# instance fields
.field private parts:Ljava/util/Vector;


# direct methods
.method protected constructor <init>(Ljavax/mail/internet/MimePart;[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V
    .locals 6
    .param p1, "part"    # Ljavax/mail/internet/MimePart;
    .param p2, "bs"    # [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .param p3, "sectionId"    # Ljava/lang/String;
    .param p4, "msg"    # Lcom/sun/mail/imap/IMAPMessage;

    .line 67
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V

    .line 69
    new-instance v0, Ljava/util/Vector;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMultipartDataSource;->parts:Ljava/util/Vector;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 78
    .end local v0
    return-void

    .line 71
    .restart local v0
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMultipartDataSource;->parts:Ljava/util/Vector;

    .line 72
    new-instance v2, Lcom/sun/mail/imap/IMAPBodyPart;

    aget-object v3, p2, v0

    .line 73
    if-nez p3, :cond_1

    .line 74
    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 75
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    :goto_1
    nop

    .line 72
    invoke-direct {v2, v3, v4, p4}, Lcom/sun/mail/imap/IMAPBodyPart;-><init>(Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMultipartDataSource;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMultipartDataSource;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
