.class public final Ljavax/mail/search/BodyTerm;
.super Ljavax/mail/search/StringTerm;
.source "BodyTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x43d8ba911c34ab19L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private matchPart(Ljavax/mail/Part;)Z
    .locals 5
    .param p1, "p"    # Ljavax/mail/Part;

    .line 85
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "text/*"

    invoke-interface {p1, v1}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 88
    return v0

    .line 97
    :cond_0
    invoke-super {p0, v1}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 98
    .end local v1
    :cond_1
    const-string v1, "multipart/*"

    invoke-interface {p1, v1}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Multipart;

    .line 100
    .local v1, "mp":Ljavax/mail/Multipart;
    invoke-virtual {v1}, Ljavax/mail/Multipart;->getCount()I

    move-result v2

    .line 101
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_2

    .end local v3
    goto :goto_1

    .line 102
    .restart local v3
    :cond_2
    invoke-virtual {v1, v3}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v1
    .end local v2
    .end local v3
    :cond_4
    const-string v1, "message/rfc822"

    invoke-interface {p1, v1}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 105
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Part;

    invoke-direct {p0, v1}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 107
    :catch_0
    move-exception v1

    .line 109
    :cond_5
    :goto_1
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 116
    instance-of v0, p1, Ljavax/mail/search/BodyTerm;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    return v0

    .line 118
    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 1
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 72
    invoke-direct {p0, p1}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z

    move-result v0

    return v0
.end method
