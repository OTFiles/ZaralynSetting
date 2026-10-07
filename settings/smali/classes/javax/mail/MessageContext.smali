.class public Ljavax/mail/MessageContext;
.super Ljava/lang/Object;
.source "MessageContext.java"


# instance fields
.field private part:Ljavax/mail/Part;


# direct methods
.method public constructor <init>(Ljavax/mail/Part;)V
    .locals 0
    .param p1, "part"    # Ljavax/mail/Part;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    .line 65
    return-void
.end method

.method private static getMessage(Ljavax/mail/Part;)Ljavax/mail/Message;
    .locals 3
    .param p0, "p"    # Ljavax/mail/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 101
    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 110
    return-object v0

    .line 102
    :cond_0
    instance-of v1, p0, Ljavax/mail/Message;

    if-eqz v1, :cond_1

    .line 103
    move-object v0, p0

    check-cast v0, Ljavax/mail/Message;

    return-object v0

    .line 104
    :cond_1
    move-object v1, p0

    check-cast v1, Ljavax/mail/BodyPart;

    .line 105
    .local v1, "bp":Ljavax/mail/BodyPart;
    invoke-virtual {v1}, Ljavax/mail/BodyPart;->getParent()Ljavax/mail/Multipart;

    move-result-object v2

    .line 106
    .local v2, "mp":Ljavax/mail/Multipart;
    if-nez v2, :cond_2

    .line 107
    return-object v0

    .line 108
    :cond_2
    invoke-virtual {v2}, Ljavax/mail/Multipart;->getParent()Ljavax/mail/Part;

    move-result-object p0

    .end local v1
    .end local v2
    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljavax/mail/Message;
    .locals 2

    .line 85
    :try_start_0
    iget-object v0, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    invoke-static {v0}, Ljavax/mail/MessageContext;->getMessage(Ljavax/mail/Part;)Ljavax/mail/Message;

    move-result-object v0

    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Ljavax/mail/MessagingException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPart()Ljavax/mail/Part;
    .locals 1

    .line 73
    iget-object v0, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    return-object v0
.end method

.method public getSession()Ljavax/mail/Session;
    .locals 2

    .line 119
    invoke-virtual {p0}, Ljavax/mail/MessageContext;->getMessage()Ljavax/mail/Message;

    move-result-object v0

    .line 120
    .local v0, "msg":Ljavax/mail/Message;
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
