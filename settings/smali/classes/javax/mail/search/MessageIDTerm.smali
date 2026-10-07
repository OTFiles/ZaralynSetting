.class public final Ljavax/mail/search/MessageIDTerm;
.super Ljavax/mail/search/StringTerm;
.source "MessageIDTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x1d6fa5d7f4941c7bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgid"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 99
    instance-of v0, p1, Ljavax/mail/search/MessageIDTerm;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 4
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 81
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Message-ID"

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "s":[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 86
    if-nez v1, :cond_0

    .line 87
    return v0

    .line 89
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 92
    .end local v2
    return v0

    .line 90
    .restart local v2
    :cond_1
    aget-object v3, v1, v2

    invoke-super {p0, v3}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v1
    .end local v2
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
