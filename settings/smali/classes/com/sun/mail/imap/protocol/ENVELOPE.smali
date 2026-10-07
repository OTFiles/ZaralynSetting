.class public Lcom/sun/mail/imap/protocol/ENVELOPE;
.super Ljava/lang/Object;
.source "ENVELOPE.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static mailDateFormat:Ljavax/mail/internet/MailDateFormat;

.field static final name:[C


# instance fields
.field public bcc:[Ljavax/mail/internet/InternetAddress;

.field public cc:[Ljavax/mail/internet/InternetAddress;

.field public date:Ljava/util/Date;

.field public from:[Ljavax/mail/internet/InternetAddress;

.field public inReplyTo:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public msgno:I

.field public replyTo:[Ljavax/mail/internet/InternetAddress;

.field public sender:[Ljavax/mail/internet/InternetAddress;

.field public subject:Ljava/lang/String;

.field public to:[Ljavax/mail/internet/InternetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    .line 78
    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    .line 60
    return-void

    nop

    :array_0
    .array-data 2
        0x45S    # 'E'
        0x4eS    # 'N'
        0x56S    # 'V'
        0x45S    # 'E'
        0x4cS    # 'L'
        0x4fS    # 'O'
        0x50S    # 'P'
        0x45S    # 'E'
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 3
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    .line 81
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->msgno:I

    .line 83
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 85
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    sget-object v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->from:[Ljavax/mail/internet/InternetAddress;

    .line 102
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    .line 103
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->replyTo:[Ljavax/mail/internet/InternetAddress;

    .line 104
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->to:[Ljavax/mail/internet/InternetAddress;

    .line 105
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->cc:[Ljavax/mail/internet/InternetAddress;

    .line 106
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->bcc:[Ljavax/mail/internet/InternetAddress;

    .line 107
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->inReplyTo:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->messageId:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_1

    .line 112
    return-void

    .line 111
    :cond_1
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "ENVELOPE parse error"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    .end local v0
    :cond_2
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    const-string v1, "ENVELOPE parse error"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;
    .locals 4
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 118
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    .line 119
    .local v0, "b":B
    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    .line 120
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 123
    .local v1, "v":Ljava/util/Vector;
    :cond_0
    new-instance v2, Lcom/sun/mail/imap/protocol/IMAPAddress;

    invoke-direct {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPAddress;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 125
    .local v2, "a":Lcom/sun/mail/imap/protocol/IMAPAddress;
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPAddress;->isEndOfGroup()Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 127
    .end local v2
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    .line 130
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/sun/mail/iap/Response;->skip(I)V

    .line 132
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/mail/internet/InternetAddress;

    .line 133
    .local v2, "a":[Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 134
    return-object v2

    .line 135
    .end local v1
    .end local v2
    :cond_2
    const/16 v1, 0x4e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 139
    :cond_3
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "ADDRESS parse error"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_4
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/sun/mail/iap/Response;->skip(I)V

    .line 137
    const/4 v1, 0x0

    return-object v1
.end method
